/*!
 * \file      app.c
 *
 * \brief     Application C file
 *
 */
#include "app.h"
#include "i2c-driver.h"
#include "i2c-lcd.h"
#include <stdio.h>
#include <stdlib.h>


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


void floatToString( float num, char* str )
{
    int parte_inteira = num;
    float parte_decimal = num - parte_inteira;

    int digito_dezena = parte_inteira % 100 / 10;
    int digito_unidade = parte_inteira % 10;

    str[0] = intToString(digito_dezena);
    str[1] = intToString(digito_unidade);
    str[2] = '.';
    str[3] = intToString( ( (int)(parte_decimal*10) ) );
}


char intToString( int num )
{
    char ret;

    switch(num)
    {
    case 0:
        ret = '0';
        break;
    case 1:
        ret = '1';
        break;
    case 2:
        ret = '2';
        break;
    case 3:
        ret = '3';
        break;
    case 4:
        ret = '4';
        break;
    case 5:
        ret = '5';
        break;
    case 6:
        ret = '6';
        break;
    case 7:
        ret = '7';  
        break;
    case 8:
        ret = '8';
        break;
    case 9:
        ret = '9';
        break;
    default:
        ret = ' ';
        break;
    }

    return ret;
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

    // float tempSurf = MLX90614_ReadTemp(MLX90614_DEFAULT_SA, MLX90614_TOBJ1);
    float tempSurf = 36.9;
	delay(10);
	// float tempAmb = MLX90614_ReadTemp(MLX90614_DEFAULT_SA, MLX90614_TAMB);
    // delay(10);

    char buf[5];
    floatToString(tempSurf, buf);
    // sprintf(buf, "%.1f", tempSurf);

    delay(1);
    lcd_init();
    delay(1);
    lcd_send_cmd (0x80|0x00);
    lcd_send_string("HELLO WORLD");
    lcd_send_cmd (0x80|0x40);
    lcd_send_string("LCD 20x4 DEMO");
    lcd_send_cmd (0x80|0x14);
    lcd_send_string("BY ControllersTech");
    lcd_send_cmd (0x80|0x54);
    lcd_send_string(buf);
    lcd_send_string(" C");

    while(1)
    {
        ;
    }
}