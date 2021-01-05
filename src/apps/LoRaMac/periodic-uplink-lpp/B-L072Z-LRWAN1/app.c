/*!
 * \file      app.c
 *
 * \brief     Application C file
 *
 */
#include "app.h"


extern Gpio_t Led4; // App
static TimerEvent_t evtTimer;


static void OnTimerEvent( void* context )
{
    TimerStop( &evtTimer );
    GpioToggle( &Led4);
    TimerStart( &evtTimer );
}


void app_setup(void)
{
    TimerInit( &evtTimer, OnTimerEvent );
    TimerSetValue( &evtTimer, 250 );
}

void app(void)
{
    app_setup();

    OnTimerEvent(NULL);

    while(1)
    {
        ;
    }
}