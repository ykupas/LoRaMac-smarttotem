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


#define LOW     0
#define HIGH    1


// Pinout DEFINES
#define LCD_PIN PA_10 
#define ALC_PIN PB_5
#define BZR_PIN PA_14
#define INT_PIN PA_13
#define R_PIN   PB_7
#define G_PIN   PA_4
#define B_PIN   PA_0


// Limits DEFINES
#define MIN_TEMP    33.0


static Gpio_t lcdPin;
static Gpio_t alcPin;
static Gpio_t bzrPin;
static Gpio_t irPin;
static Gpio_t rPin;
static Gpio_t gPin;
static Gpio_t bPin;
static Gpio_t pushButton;

static TimerEvent_t irDebounceTimer;
static TimerEvent_t buttonDebounceTimer;

volatile int peopleCounter;
volatile uint8_t appFlag;


/* Button Debounce Timer function event */
void ButtonDebounceTimerEvent( void* context );
/* Button Interruption function event */
void ButtonInterruptEvent( void* context );


/* Infra-red Debounce Timer function event */
void IrDebounceTimerEvent( void* context );
/* Infra-red Interruption function event */
void IrInterruptEvent( void* context );


/* Float to String function */
void floatToString( float num, char* str );
/* Int to String function */
char intToString( int num );
/* People Counter to String function */
void counterToString( int counter, char* str );
/* LCD task function */
void lcdTask( float temp, int count );
/* LCD init function */
void lcdInit( void );


/* MLX task Function */
float mlxTask( void );


/* LED function */
void ledTurn(char k);


/* Delay (milisseconds) function using RTC */
void delay( uint32_t ms );
/* Delay (useconds) function using RTC */
void delayUs( uint32_t us );


/* Application setup funciton */
void app_setup(void);


/* Application function */
void app(void);


#endif