/*!
 * \file      app.c
 *
 * \brief     Application C file
 *
 */
#include "app.h"


// #define INT BTN_1
#define INT_PIN PA_4
// #define INT_EDGE IRQ_FALLING_EDGE
#define INT_EDGE IRQ_RISING_EDGE
// #define INT_STATE 0
#define INT_STATE 1


extern Gpio_t Led1;
extern Gpio_t Led4;


void DebounceTimerEvent( void* context )
{
    // Stopping timer
    TimerStop( &debounceTimer );

    // Re-setup GPIO that it can be read
    GpioInit( &PushButton, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    if( GpioRead(&PushButton) == INT_STATE ) 
    {
        // If interruption is still going, toggle LED
        GpioToggle( &Led1);
    }

    // Set the interruption again
    GpioSetInterrupt( &PushButton, INT_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
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
    GpioInit( &PushButton, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    GpioSetInterrupt( &PushButton, INT_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
}

void app(void)
{
    app_setup();

    while(1)
    {
        ;
    }
}