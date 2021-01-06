/*!
 * \file      i2c-driver.h
 *
 * \brief     I2C driver header file
 *
 */
#ifndef __I2C_DRIVER__
#define __I2C_DRIVER__


#include <stdio.h>
#include "gpio.h"


Gpio_t SCL;
Gpio_t SDA;

// I2C protocol via software
void InitI2c( void );
void WriteI2cSW_8bits(uint8_t addr, uint8_t reg, uint8_t data);
uint8_t ReadI2cSW_8bits(uint8_t addr, uint8_t reg);
uint16_t ReadI2cSW_16bits(uint8_t addr, uint8_t reg);
uint16_t ReadI2cSW_24bits(uint8_t addr, uint8_t reg, uint8_t* buf);


#endif