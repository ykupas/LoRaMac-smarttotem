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
#include <math.h>


extern Gpio_t Led3;


void DebounceTimerEvent( void* context )
{
    // Stopping timer
    TimerStop( &debounceTimer );

    // Re-setup GPIO that it can be read
    GpioInit( &pushButton, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    if( GpioRead(&pushButton) == INT_STATE ) 
    {
        // If interruption is still going, toggle LED
        GpioToggle( &Led3);
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


void lcdTask( float temp )
{
    if(temp <= MIN_TEMP)
    {
        // Line 0 
        lcd_send_cmd (0x80|0x00);
        lcd_send_string("Temp muito baixa");
        // Line 1
        lcd_send_cmd (0x80|0x40);
        lcd_send_string("Repita o processo");
        // Line 2 
        lcd_send_cmd (0x80|0x14);
        lcd_send_string("com o punho mais");
        // Line 3
        lcd_send_cmd (0x80|0x54);
        lcd_send_string("proximo do indicado");
    }
    else
    {
        // Passing float to string
        char buf[4];
        floatToString(temp, buf);
        // Line 0 
        lcd_send_cmd (0x80|0x00);
        lcd_send_string("Temperatura");
        // Line 1
        lcd_send_cmd (0x80|0x40);
        lcd_send_float(buf);
        lcd_send_string(" C");
        // Line 2 
        lcd_send_cmd (0x80|0x14);
        lcd_send_string("Numero de pessoas");
        // Line 3
        lcd_send_cmd (0x80|0x54);
        lcd_send_string("300");
    }
}


float mlxTask( void )
{
    MLX90614_WakeUpSleepMode();
    delay(50);
    float tempSurf = MLX90614_ReadTemp(MLX90614_DEFAULT_SA, MLX90614_TOBJ1);
    delay(1);
    tempSurf += MLX90614_ReadTemp(MLX90614_DEFAULT_SA, MLX90614_TOBJ1);
    tempSurf = tempSurf/2.0;
    MLX90614_EnterSleepMode(MLX90614_DEFAULT_SA);
    // float temp = ceilf(tempSurf * 10) / 10;
    float temp = ( (float)( (int)(tempSurf * 10) ) ) / 10; 
    return temp;
}


void ledTurn(char k)
{
    switch (k)
    {
    case 'r':
        GpioWrite( &rPin, 0 );
        GpioWrite( &gPin, 1 );
        GpioWrite( &bPin, 1 );
        break;

    case 'g':
        GpioWrite( &rPin, 1 );
        GpioWrite( &gPin, 0 );
        GpioWrite( &bPin, 1 );
        break;
    
    case 'b':
        GpioWrite( &rPin, 1 );
        GpioWrite( &gPin, 1 );
        GpioWrite( &bPin, 0 );
        break;

    case 'o':
        GpioWrite( &rPin, 1 );
        GpioWrite( &gPin, 1 );
        GpioWrite( &bPin, 1 );
        break;

    default:
        break;
    }
}


void delay( uint32_t ms )
{
    RtcDelayMs( ms );
}


void delayUs( uint32_t us )
{
    RtcDelayUs( us );
}


void app_setup(void)
{
    // Debounce timer init
    TimerInit( &debounceTimer, DebounceTimerEvent );
    TimerSetValue( &debounceTimer, 1000 );

    // Init I2C - I2C 1 - PB8 SCL - PB9 SDA 
    InitI2c();

    // GPIOs init
    GpioInit( &lcdPin, LCD_PIN, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioWrite( &lcdPin, 0);
    GpioInit( &alcPin, ALC_PIN, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioWrite( &alcPin, 0);
    GpioInit( &bzrPin, BZR_PIN, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioWrite( &bzrPin, 0);
    GpioInit( &rPin, R_PIN, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &gPin, G_PIN, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &bPin, B_PIN, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    ledTurn('o');
    GpioInit( &intPin, INT_PIN, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 1 );

    // LCD init
    GpioWrite( &lcdPin, 1);
    delay(1);
    lcd_init();
    delay(50);
    lcd_clear();
    delay(50);

    // Interruption set-up init 
    // GpioInit( &pushButton, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    // GpioSetInterrupt( &pushButton, INT_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
    GpioSetInterrupt( &intPin, INT_EDGE, IRQ_MEDIUM_PRIORITY, DebounceIntEvent);
    
}

void app(void)
{
    // Application setup
    app_setup();

    // Print MLX results on LCD
    lcdTask( mlxTask() );

    // Turn Off LCD
    delay(2000);
    GpioWrite( &lcdPin, 0 );

    GpioWrite( &bzrPin, 1 );
    delay(500);
    GpioWrite( &bzrPin, 0 );
    ledTurn('r');
    delay(500);
    ledTurn('g');
    delay(500);
    ledTurn('b');
    delay(500);
    ledTurn('o');
    GpioWrite( &alcPin, 1);
    delay(3000);
    GpioWrite( &alcPin, 0);

    while(1)
    {
        // GpioToggle( &Led1);
        // delayUs(500000);
    }
}