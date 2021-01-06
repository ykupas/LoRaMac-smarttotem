/*!
 * \file      i2c-lcd.h
 *
 * \brief     LCD header file
 *
 */
#ifndef __I2C_LCD_H__
#define __I2C_LCD_H__


#include "i2c-driver.h"
#include "app.h"


void lcd_init (void);   // initialize lcd

void lcd_send_cmd (char cmd);  // send command to the lcd

void lcd_send_data (char data);  // send data to the lcd

void lcd_send_string (char *str);  // send string to the lcd

void lcd_clear (void);  


#endif