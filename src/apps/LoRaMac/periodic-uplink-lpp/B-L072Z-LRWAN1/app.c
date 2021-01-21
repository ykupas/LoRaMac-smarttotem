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


void ButtonDebounceTimerEvent( void* context )
{
    // Stopping timer
    TimerStop( &buttonDebounceTimer );

    // Re-setup GPIO that it can be read
    GpioInit( &pushButton, PB_2, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    if( GpioRead(&pushButton) == LOW ) 
    {
        peopleCounter = 0;
    }

    // Set the interruption again
    GpioSetInterrupt( &pushButton, IRQ_FALLING_EDGE, IRQ_MEDIUM_PRIORITY, ButtonInterruptEvent);
}


void IrDebounceTimerEvent( void* context )
{
    // Stopping timer
    TimerStop( &irDebounceTimer );

    // Re-setup GPIO that it can be read
    GpioInit( &irPin, INT_PIN, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );
    if( GpioRead(&irPin) == HIGH ) 
    {
        appFlag = 1;
        ledTurn('b');
    }

    // Set the interruption again
    GpioSetInterrupt( &irPin, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, IrInterruptEvent);
}


void ButtonInterruptEvent( void* context )
{
    // DeInit the GPIO 
    GpioRemoveInterrupt(&pushButton);
    // Start the debounce timer
    TimerStart( &buttonDebounceTimer );
}


void IrInterruptEvent( void* context )
{
    // DeInit the GPIO 
    GpioRemoveInterrupt(&irPin);
    // Start the debounce timer
    TimerStart( &irDebounceTimer );
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


void counterToString( int counter, char* str )
{
    if( counter < 10 )
    {
        int digito_unidade = counter % 10;
        str[0] = '0';
        str[1] = '0';
        str[2] = intToString(digito_unidade);
    }
    else if( counter >= 10 && counter < 100 )
    {
        int digito_dezena = counter % 100 / 10;
        int digito_unidade = counter % 10;
        str[0] = '0';
        str[1] = intToString(digito_dezena);
        str[2] = intToString(digito_unidade);
    }
    else if(counter >= 100 && counter < 1000 )
    {
        int digito_centena = counter / 100;
        int digito_dezena = counter % 100 / 10;
        int digito_unidade = counter % 10;
        str[0] = intToString(digito_centena);
        str[1] = intToString(digito_dezena);
        str[2] = intToString(digito_unidade);
    }
    else
    {
        str[0] = '9';
        str[1] = '9';
        str[2] = '9';
    }
}


void lcdTask( float temp, int count )
{
    lcdInit();

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
        char buf1[4];
        char buf2[4];
        floatToString(temp, buf1);
        counterToString(count, buf2);
        // Line 0 
        lcd_send_cmd (0x80|0x00);
        lcd_send_string("Temperatura");
        // Line 1
        lcd_send_cmd (0x80|0x40);
        lcd_send_float(buf1);
        lcd_send_string(" C");
        // Line 2 
        lcd_send_cmd (0x80|0x14);
        lcd_send_string("Numero de pessoas");
        // Line 3
        lcd_send_cmd (0x80|0x54);
        lcd_send_string(buf2);
        lcd_send_string(" pessoas");
    }
}


void lcdInit( void )
{
    lcd_init();
    delay(50);
    lcd_clear();
    delay(50);
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
    // Button Debounce timer init
    TimerInit( &buttonDebounceTimer, ButtonDebounceTimerEvent );
    TimerSetValue( &buttonDebounceTimer, 100 );

    // Infra-red Debounce timer init
    TimerInit( &irDebounceTimer, IrDebounceTimerEvent );
    TimerSetValue( &irDebounceTimer, 1000 );

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
    GpioInit( &irPin, INT_PIN, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 1 );
    GpioInit( &pushButton, PB_2, PIN_INPUT, PIN_OPEN_DRAIN, PIN_NO_PULL, 1 );

    // Interruption set-up init 
    GpioSetInterrupt( &irPin, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, IrInterruptEvent);
    GpioSetInterrupt( &pushButton, IRQ_FALLING_EDGE, IRQ_MEDIUM_PRIORITY, ButtonInterruptEvent);

    peopleCounter = 0;
    appFlag = 0;
}

void app(void)
{
    // // Print MLX results on LCD
    // lcdTask( mlxTask(), peopleCounter );

    // // Turn Off LCD
    // delay(2000);
    // GpioWrite( &lcdPin, 0 );

    // GpioWrite( &bzrPin, 1 );
    // delay(500);
    // GpioWrite( &bzrPin, 0 );
    // ledTurn('r');
    // delay(500);
    // ledTurn('g');
    // delay(500);
    // ledTurn('b');
    // delay(500);
    // ledTurn('o');
    // GpioWrite( &alcPin, 1);
    // delay(3000);
    // GpioWrite( &alcPin, 0);

    while(1)
    {
        while(appFlag == 0);
        peopleCounter++;
        GpioWrite( &lcdPin, 1 );
        delay(10);
        lcdTask( mlxTask(), peopleCounter );
        delay(2000);
        GpioWrite( &lcdPin, 0 );
        appFlag = 0;
        ledTurn('o');
    }
}