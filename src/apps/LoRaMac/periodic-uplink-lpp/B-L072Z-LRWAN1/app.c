/*!
 * \file      app.c
 *
 * \brief     Application C file
 *
 */
#include "app.h"
#include "i2c-driver.h"
#include "i2c-lcd.h"


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
    GpioInit( &pushButton, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    if( GpioRead(&pushButton) == INT_STATE ) 
    {
        // If interruption is still going, toggle LED
        GpioToggle( &Led1);
    }

    // Set the interruption again
    GpioSetInterrupt( &pushButton, INT_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
}


void DebounceIntEvent( void* context )
{
    // DeInit the GPIO 
    GpioRemoveInterrupt(&pushButton);
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


void delay( uint32_t ms )
{
    RtcDelayMs( ms );
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

    // Init I2C - I2C 1 - PB8 SCL - PB9 SDA 
    InitI2c();

    // Push button init 
    GpioInit( &pushButton, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    GpioSetInterrupt( &pushButton, INT_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
}

void app(void)
{
    app_setup();

    lcd_init();
    lcd_send_cmd (0x80|0x00);
    lcd_send_string("HELLO WORLD");
    lcd_send_cmd (0x80|0x40);
    lcd_send_string("LCD 20x4 DEMO");
    lcd_send_cmd (0x80|0x14);
    lcd_send_string("BY");
    lcd_send_cmd (0x80|0x54);
    lcd_send_string("ControllersTech");

    while(1)
    {
        ;
    }
}