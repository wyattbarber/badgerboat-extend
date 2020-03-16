#include "MBUtils.h"
#include <iostream>
#include <thread>
#include <chrono>
#include "MOOS/libMOOS/Thirdparty/AppCasting/AppCastingMOOSApp.h"
#include "MOOS/libMOOS/MOOSLib.h"
#include "MOOS/libMOOSGeodesy/MOOSGeodesy.h"


class moosserialtest;

class MOOSSerial : public AppCastingMOOSApp {
    friend moosserialtest;

    public:
        MOOSSerial();
        ~MOOSSerial();

    protected:
    
};