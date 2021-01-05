/*!
 * \file      app.h
 *
 * \brief     Application header file
 *
 */
#ifndef __APP_H__
#define __APP_H__

#include <stdio.h>
#include "utilities.h"
#include "board.h"
#include "board-config.h"
#include "gpio.h"

#include "Commissioning.h"
#include "LmHandler.h"
#include "LmhpCompliance.h"
#include "CayenneLpp.h"
#include "LmHandlerMsgDisplay.h"


Gpio_t PushButton;

static TimerEvent_t evtTimer;
static TimerEvent_t debounceTimer;


/* Debounce Timer function event */
void DebounceTimerEvent( void* context );


/* Debounce Interruption function event */
void DebounceIntEvent( void* context );


/* Timer Event Function */
void OnTimerEvent( void* context );


/* Application setup funciton */
void app_setup(void);


/* Application function */
void app(void);


#endif