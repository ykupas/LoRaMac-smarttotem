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
#include "gpio.h"

#include "Commissioning.h"
#include "LmHandler.h"
#include "LmhpCompliance.h"
#include "CayenneLpp.h"
#include "LmHandlerMsgDisplay.h"


/* Timer Event Function */
static void OnTimerEvent( void* context );


/* Application setup funciton */
void app_setup(void);


/* Application function */
void app(void);


#endif