/************************************************************/
/*    NAME:                                               */
/*    ORGN: MIT                                             */
/*    FILE: ObstacleConverter.cpp                            */
/*    DATE:                                                 */
/************************************************************/

#include <iostream>
#include <stdio.h>
#include <thread>
#include <ctime>
#include <chrono>
#include <cmath>

#define DEBUG 1
#define DEBUG2 1

#include "ObstacleConverter.h"


//---------------------------------------------------------
// Constructor
ObstacleConverter::ObstacleConverter()
{
  this->batchSize = 100;
  this->varIn = "ROS_POINT";
  this->varOut = "TRACKED_FEATURE";
  this->boatPose.head = 0.0;
  this->boatPose.x = 0.0;
  this->boatPose.y = 0.0;
}

//---------------------------------------------------------
// Destructor
ObstacleConverter::~ObstacleConverter() {}

//---------------------------------------------------------
// Procedure: OnStartUp()
bool ObstacleConverter::OnStartUp()
{
#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::OnStartUp() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  AppCastingMOOSApp::OnStartUp();

  // No params to use curently but keeping this template here in case

  STRING_LIST sParams;
  m_MissionReader.EnableVerbatimQuoting(false);

  if (!m_MissionReader.GetConfiguration(GetAppName(), sParams))
  {
    reportConfigWarning("No config block found for " + GetAppName());
  }

  STRING_LIST::iterator p;
  for (p = sParams.begin(); p != sParams.end(); p++)
  {
    std::string orig = *p;
    std::string line = *p;
    std::string param = toupper(biteStringX(line, '='));
    std::string value = line;
    bool handled = false;

    if (param == "BATCHSIZE")
    {
      this->batchSize = std::stoi(value);
      handled = true;
    }
    else if (param == "VAR_IN")
    {
      this->varIn = value;
      handled = true;
    }
    else if (param == "VAR_OUT") 
    {
      this->varOut = value;
      handled = true;
    }

    if (!handled)
    {
      reportUnhandledConfigWarning(orig);
    }
  }

  registerVariables();

#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::OnStartUp() Finished." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  return true;
}

//---------------------------------------------------------
// Procedure: OnConnectToServer
bool ObstacleConverter::OnConnectToServer()
{
  registerVariables();
  return true;
}

//---------------------------------------------------------
// Procedure: OnNewMail
bool ObstacleConverter::OnNewMail(MOOSMSG_LIST &newMail)
{
#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::OnNewMail(MOOSMSG_LIST& newMail) Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  AppCastingMOOSApp::OnNewMail(newMail);

  MOOSMSG_LIST::iterator p;
  for (p = newMail.begin(); p != newMail.end(); p++)
  {
    CMOOSMsg msg = *p;
    std::string key = msg.GetKey();

#if DEBUG2
      std::cout << termColor("green");
      std::cout << "pObstacleConverter: Recieved msg key: " << key <<std::endl;
      std::cout << termColor() << std::endl;
#endif

    bool handled = false;
    if (key == this->varIn)
    {
      std::string pt_as_str = handleNewPoint(msg.GetString());
      points.push_back(pt_as_str);

#if DEBUG2
      std::cout << termColor("green");
      std::cout << "pObstacleConverter: Adding point to queue." << std::endl;
      std::cout << termColor() << std::endl;
#endif

      handled = true;
    }
    else if (key == "NAV_X")
    {
      boatPose.x = msg.GetDouble();
      handled = true;
    }
    else if (key == "NAV_Y")
    {
      boatPose.y = msg.GetDouble();
      handled = true;
    }
    else if (key == "NAV_HEADING")
    {
      // headingToRadians is probably the better way to do this,
      // but it wasn't compiling
      boatPose.head = (msg.GetDouble()) * (M_PI / 180.0);
      handled = true;
    }

    if (!handled && (key != "APPCAST_REQ"))
    {
      reportRunWarning("Unhandled Mail: " + key);
    }
  }

#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::OnNewMail(MOOSMSG_LIST& newMail) Finished." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  return true;
}

//---------------------------------------------------------
// Procedure: Iterate
bool ObstacleConverter::Iterate()
{

#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::Iterate() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  AppCastingMOOSApp::Iterate();

  // Notify N points from points vector
  const int N = 100;
  for (int i = 0; i < N; i++)
  {
    if(points.empty())
    {
      #if DEBUG2
      std::cout << termColor("green");
      std::cout << "pObstacleConverter: Attempted to pop, queue empty." << std::endl;
      std::cout << termColor() << std::endl;
      #endif

      break;
    }
    else
    {
      #if DEBUG2
      std::cout << termColor("green");
      std::cout << "pObstacleConverter: Popped point from queue." << std::endl;
      std::cout << termColor() << std::endl;
      #endif

      std::string pt = points.front();
      Notify(this->varOut, pt);
      points.erase(points.begin());
    }
  }

#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::Iterate() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  return true;
}

//---------------------------------------------------------
// Procedure: registerVariables
void ObstacleConverter::registerVariables()
{
#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::RegisterVariables() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  AppCastingMOOSApp::RegisterVariables();

  Register(this->varIn, 0);
  Register("NAV_X", 0);
  Register("NAV_Y", 0);
  Register("NAV_HEADING", 0);

#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::RegisterVariables() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif
}

//------------------------------------------------------------
// Procedure: buildReport()

bool ObstacleConverter::buildReport()
{
#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::BuildReport() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  m_msgs << "============================================ \n";
  m_msgs << "File: ObstacleConverter.cpp                  \n";
  m_msgs << "============================================ \n";
  m_msgs << "NAV_X: " << boatPose.x << std::endl;
  m_msgs << "NAV_Y: " << boatPose.y << std::endl;
  m_msgs << "NAV_HEADING: " << boatPose.head << std::endl;
  m_msgs << "============================================ \n";

#if DEBUG
  std::cout << termColor("green");
  std::cout << "pObstacleConverter::BuildReport() Called." << std::endl;
  std::cout << termColor() << std::endl;
#endif

  return true;
}