/*!
 * \file      app.c
 *
 * \brief     Application C file
 *
 */
#include "app.h"


extern Gpio_t Led1;
extern Gpio_t Led4;


void DebounceTimerEvent( void* context )
{
    // Stopping timer
    TimerStop( &debounceTimer );

    // Re-setup GPIO taht it can be read
    GpioInit( &PushButton, BTN_1, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    if( GpioRead(&PushButton) == 0 ) 
    {
        // If button is still pressed, toggle LED
        GpioToggle( &Led1);
    }

    // Set the interruption again
    GpioSetInterrupt( &PushButton, IRQ_FALLING_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
}


void DebounceIntEvent( void* context )
{
    // DeInit the GPIO 
    GpioRemoveInterrupt(&PushButton);
    // Start the debounce timer
    TimerStart( &debounceTimer );
}


void OnTimerEvent( void* context )
{
    // Stop, toggle Led and start again
    TimerStop( &evtTimer );
    GpioToggle( &Led4 );
    TimerStart( &evtTimer );
}


void app_setup(void)
{
    // LED4 timer init
    TimerInit( &evtTimer, OnTimerEvent );
    TimerSetValue( &evtTimer, 500 );

    OnTimerEvent( NULL );

    // Debounce timer init
    TimerInit( &debounceTimer, DebounceTimerEvent );
    TimerSetValue( &debounceTimer, 1000 );

    // Push button init 
    GpioInit( &PushButton, BTN_1, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    GpioSetInterrupt( &PushButton, IRQ_FALLING_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
}

void app(void)
{
    app_setup();

    while(1)
    {
        ;
    }
}