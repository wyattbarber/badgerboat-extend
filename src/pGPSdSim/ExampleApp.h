// This is the CMOOSApp example from the MOOS website documentation
// Included here for convenience
//
// Feb 10th, 2013

#include "MOOS/libMOOS/App/MOOSApp.h"

class pGPSdSim : public CMOOSApp {

  bool OnNewMail (MOOSMSG_LIST & Mail) 
  {
    MOOSApp.OnNewMail(Mail);
    return(true);
  }
  
  bool OnConnectToServer () {
    MOOSApp.OnConnectToServer();
    return true;
  } 
  
  bool Iterate ( ) {
    Notify("NAV_X" , 0.0);
    Notify("NAV_Y", 0.0);
    Notify("NAV_HEADING",0.0);
    return true ;
  }
};

