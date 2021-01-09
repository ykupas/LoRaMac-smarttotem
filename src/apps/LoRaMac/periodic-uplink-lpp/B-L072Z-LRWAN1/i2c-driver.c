/*!
 * \file      i2c-driver.c
 *
 * \brief     sensor functions implementation
 *	
 * \author    Alexandro Vanderley dos Santos
 */

#include "i2c-driver.h"
#include <stdio.h>
#include <stdlib.h>


void InitI2c( void )
{
    GpioInit( &SDA, PB_9, PIN_OUTPUT,  PIN_OPEN_DRAIN, PIN_NO_PULL, 1);
	GpioInit( &SCL, PB_8, PIN_OUTPUT,  PIN_OPEN_DRAIN, PIN_NO_PULL, 1);	
}


void WriteI2cSW_8bits(uint8_t addr, uint8_t reg, uint8_t data)
{	
	uint8_t x;
	uint8_t addr_Write=addr<<1;
	uint8_t internal_Reg=reg;
	uint8_t Reg_data=data;	
	//i2c_start();              	// send start sequence
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioWrite(&SDA,0);
	GpioWrite(&SCL,0);
	//i2c_tx(addr W);             	// SRF08 I2C address with R/W bit clear	
	for(x=8; x; x--) {
		if(addr_Write&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Write <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);	
	GpioRead(&SDA);          		// possible ACK bit	
	GpioWrite(&SCL,0);		
	//i2c_tx(reg);             		// SRF08 light sensor register address	
	for(x=8; x; x--) {
		if(internal_Reg&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		internal_Reg <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);	
	GpioRead(&SDA);          		// possible ACK bit
	GpioWrite(&SCL,0);	
	//i2c_tx(data);             	// SRF08 light sensor register address	
	for(x=8; x; x--) {
		if(Reg_data&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		Reg_data <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);	
	GpioRead(&SDA);          		// possible ACK bit
	GpioWrite(&SCL,0);	
	//i2c_stop(); 	
	GpioWrite(&SDA,0);
	GpioWrite(&SCL,1);
	GpioWrite(&SDA,1);	 
}


uint8_t ReadI2cSW_8bits(uint8_t addr, uint8_t reg)
{
	uint8_t data=0;
	uint8_t addr_Write=addr<<1;	
	uint8_t addr_Read=addr_Write+0x01;	
	uint8_t	internal_Reg=reg;
	uint8_t x;
	
	//start()
	GpioWrite(&SDA,1);             // i2c start bit sequence 
	GpioWrite(&SCL,1); 
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,0);        
	//i2c_tx(addr_Write);  	
	for(x=8; x; x--) {
		if(addr_Write&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Write <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit	
	GpioWrite(&SCL,0);	
	//i2c_tx(internal_Reg);
	for(x=8; x; x--) {
		if(internal_Reg&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		internal_Reg <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit		
	GpioWrite(&SCL,0);
	//GpioWrite(&SCL,0);			//delay	
	//start()	
	GpioWrite(&SCL,1); 
	//GpioWrite(&SCL,1);  			//delay
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,0);               
	//i2c_tx(addr_Read);
	for(x=8; x; x--) {
		if(addr_Read&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Read <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit		
	GpioWrite(&SCL,0);         
	//d = i2c_rx(0);  		
	for(x=0; x<8; x++) {
		data <<= 1;
		GpioWrite(&SCL,1);
		while(GpioRead(&SCL)==0);    // wait for any SCL clock stretching		
		if(GpioRead(&SDA)) data |= 1;
		GpioWrite(&SCL,0);
	}	
	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);		
	//stop()
	GpioWrite(&SDA,0);             	// i2c stop bit sequence
	GpioWrite(&SCL,1);
	GpioWrite(&SDA,1);	
	return data; 
}


uint16_t ReadI2cSW_16bits(uint8_t addr, uint8_t reg)
{
	uint8_t data_L=0;
	uint8_t data_H=0;
	uint8_t addr_Write=addr<<1;	
	uint8_t addr_Read=addr_Write+0x01;	
	uint8_t	internal_Reg=reg|0x80;
	uint8_t x;
	uint16_t value=0;	
	//start()
	GpioWrite(&SDA,1);             // i2c start bit sequence 
	GpioWrite(&SCL,1); 
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,0);        
	//i2c_tx(addr_Write);  	
	for(x=8; x; x--) {
		if(addr_Write&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Write <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit	
	GpioWrite(&SCL,0);	
	//i2c_tx(internal_Reg);
	for(x=8; x; x--) {
		if(internal_Reg&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		internal_Reg <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit		
	GpioWrite(&SCL,0);
	//GpioWrite(&SCL,0);			//delay	
	//start()	
	GpioWrite(&SCL,1); 
	//GpioWrite(&SCL,1);  			//delay
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,0);               
	//i2c_tx(addr_Read);
	for(x=8; x; x--) {
		if(addr_Read&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Read <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit		
	GpioWrite(&SCL,0);         
	//d = i2c_rx(0);  		
	for(x=0; x<8; x++) {
		data_L <<= 1;
		GpioWrite(&SCL,1);
		while(GpioRead(&SCL)==0);  	// wait for any SCL clock stretching		
		if(GpioRead(&SDA)) data_L |= 1;
		GpioWrite(&SCL,0);
	}	
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);
	GpioWrite(&SDA,1); 	
	//dada_L = i2c_rx(0);  		
	for(x=0; x<8; x++) {
		data_H <<= 1;
		GpioWrite(&SCL,1);
		while(GpioRead(&SCL)==0);    // wait for any SCL clock stretching		
		if(GpioRead(&SDA)) data_H |= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);		
	//stop()
	GpioWrite(&SDA,0);            	 // i2c stop bit sequence
	GpioWrite(&SCL,1);
	GpioWrite(&SDA,1);		
	value=(data_H<<8)+data_L;
	return (value); 
}


uint16_t ReadI2cSW_24bits(uint8_t addr, uint8_t reg, uint8_t* buf)
{
	uint8_t data_L=0;
	uint8_t data_H=0;
	uint8_t Crc=0;
	uint8_t addr_Write=addr<<1;	
	uint8_t addr_Read=addr_Write+0x01;	
	uint8_t	internal_Reg=reg;
	uint8_t x;
	uint16_t value=0;	

	//start()
	GpioWrite(&SDA,1);             // i2c start bit sequence 
	GpioWrite(&SCL,1); 
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,0);    

	//i2c_tx(addr_Write) //////////////////////////////
	for(x=8; x; x--) {
		if(addr_Write&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Write <<= 1;

		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit	
	GpioWrite(&SCL,0);
	///////////////////////////////////////////////////

	//i2c_tx(internal_Reg); ///////////////////////////
	for(x=8; x; x--) {
		if(internal_Reg&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		internal_Reg <<= 1;

		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit		
	GpioWrite(&SCL,0);
	///////////////////////////////////////////////////

	//start()
	GpioWrite(&SDA,1);             // i2c start bit sequence 
	GpioWrite(&SCL,1); 
	GpioWrite(&SDA,0); 
	GpioWrite(&SCL,0);    
              
	//i2c_tx(addr_Read); /////////////////////////////
	for(x=8; x; x--) {
		if(addr_Read&0x80) GpioWrite(&SDA,1);
		else GpioWrite(&SDA,0);
		GpioWrite(&SCL,1);
		addr_Read <<= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,1);
	GpioWrite(&SCL,1);
	GpioRead(&SDA);          		// possible ACK bit	
	GpioWrite(&SCL,0);
	///////////////////////////////////////////////////	

	//data_L = i2c_rx(0);  	//////////////////////////	
	for(x=0; x<8; x++) {
		data_L <<= 1;
		GpioWrite(&SCL,1);
		while(GpioRead(&SCL)==0);  	// wait for any SCL clock stretching		
		if(GpioRead(&SDA)) data_L |= 1;
		GpioWrite(&SCL,0);
	}	
	GpioWrite(&SDA,0); // possible ACK bit
	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);
	GpioWrite(&SDA,1); 	
	///////////////////////////////////////////////////	

	//data_H = i2c_rx(0);  		///////////////////////
	for(x=0; x<8; x++) {
		data_H <<= 1;
		GpioWrite(&SCL,1);
		while(GpioRead(&SCL)==0);    // wait for any SCL clock stretching		
		if(GpioRead(&SDA)) data_H |= 1;
		GpioWrite(&SCL,0);
	}  
	GpioWrite(&SDA,0); // possible ACK bit
	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);
	GpioWrite(&SDA,1); 	
	///////////////////////////////////////////////////	

	//crc = i2c_rx(0);  	//////////////////////////	
	for(x=0; x<8; x++) {
		Crc <<= 1;
		GpioWrite(&SCL,1);
		while(GpioRead(&SCL)==0);    // wait for any SCL clock stretching		
		if(GpioRead(&SDA)) Crc |= 1;
		GpioWrite(&SCL,0);
	}
	GpioWrite(&SDA,0); // possible ACK bit
	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);
	GpioWrite(&SDA,1); 	
	///////////////////////////////////////////////////	 

	GpioWrite(&SCL,1);	
	GpioWrite(&SCL,0);		
	//stop()
	GpioWrite(&SDA,0);            	 // i2c stop bit sequence
	GpioWrite(&SCL,1);
	GpioWrite(&SDA,1);		
	value=(data_H<<8)+data_L;
	buf[2] = Crc;
	buf[1] = data_H;
	buf[0] = data_L;
	return (value); 
}

