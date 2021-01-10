/*!
 * \file      app.h
 *
 * \brief     Application header file
 *
 */
#ifndef __APP_H__
#define __APP_H__

#include <stdio.h>
#include "board.h"
#include "board-config.h"
#include "rtc-board.h"
#include "gpio.h"
#include "i2c-driver.h"
#include "mlx90614.h"


// Pinout DEFINES
#define LCD_PIN PA_10 

// Limits DEFINES
#define MIN_TEMP    33.0


static Gpio_t lcdPin;
static Gpio_t pushButton;
static TimerEvent_t evtTimer;
static TimerEvent_t debounceTimer;


/* Debounce Timer function event */
void DebounceTimerEvent( void* context );


/* Debounce Interruption function event */
void DebounceIntEvent( void* context );


/* Timer Event Function */
void OnTimerEvent( void* context );


/* Float to String function */
void floatToString( float num, char* str );
/* Int to String function */
char intToString( int num );
/* LCD task function */
void lcdTask( float temp );


/* MLX task Function */
float mlxTask( void );


/* Delay (milisseconds) function using RTC */
void delay( uint32_t ms );
/* Delay (useconds) function using RTC */
void delayUs( uint32_t us );


/* Application setup funciton */
void app_setup(void);


/* Application function */
void app(void);


#endif