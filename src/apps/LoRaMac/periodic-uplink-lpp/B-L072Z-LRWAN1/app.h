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


/* Delay (milisseconds) function using RTC */
void delay( uint32_t ms );


/* Application setup funciton */
void app_setup(void);


/* Application function */
void app(void);


#endif