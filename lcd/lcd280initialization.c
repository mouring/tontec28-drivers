//
//  lcdInitialization.c
//  mzt280
//
//  Created by Galen Rhodes on 5/31/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#include "lcd280common.h"

void inline lcdPowerOn() {
	//*************Power On sequence ****************
	lcdCommandWrite(0x0015, 0x0030);      // Set the internal vcore voltage
	lcdCommandWrite(0x009A, 0x0010);
	lcdCommandWrite(0x0011, 0x0020);         // DC1[2:0], DC0[2:0], VC[2:0]
	lcdCommandWrite(0x0010, 0x3428);         // SAP, BT[3:0], AP, DSTB, SLP, STB
	lcdCommandWrite(0x0012, 0x0002);         // VREG1OUT voltage
	lcdCommandWrite(0x0013, 0x1038);         // VDV[4:0] for VCOM amplitude
	delay(4);
	lcdCommandWrite(0x0012, 0x0012);         // VREG1OUT voltage
	delay(4);
	lcdCommandWrite(0x0010, 0x3420);         // SAP, BT[3:0], AP, DSTB, SLP, STB
	lcdCommandWrite(0x0013, 0x3038);         // VDV[4:0] for VCOM amplitude
	delay(7);
}

void inline lcdSetup() {
	//----------2.8" Gamma  Curve table 2 ----------
	lcdCommandWrite(0x30, 0x0000);
	lcdCommandWrite(0x31, 0x0402);
	lcdCommandWrite(0x32, 0x0307);
	lcdCommandWrite(0x33, 0x0304);
	lcdCommandWrite(0x34, 0x0004);
	lcdCommandWrite(0x35, 0x0401);
	lcdCommandWrite(0x36, 0x0707);
	lcdCommandWrite(0x37, 0x0305);
	lcdCommandWrite(0x38, 0x0610);
	lcdCommandWrite(0x39, 0x0610);

	lcdCommandWrite(0x0001, 0x0000);     // set SS and SM bit
	lcdCommandWrite(0x0002, 0x0300);     // set 1 line inveLCD_RSion
	lcdCommandWrite(0x0003, 0x1038);     // set GRAM write direction and BGR=1.
	lcdCommandWrite(0x0008, 0x0808);     // set the back porch and front porch
	lcdCommandWrite(0x000A, 0x0008);     // FMARK function

	lcdCommandWrite(0x0060, 0x2700);        // Gate Scan Line
	lcdCommandWrite(0x0061, 0x0001);        // NDL,VLE, REV

	lcdCommandWrite(0x0090, 0x013E);
	lcdCommandWrite(0x0092, 0x0100);
	lcdCommandWrite(0x0093, 0x0100);

	lcdCommandWrite(0x00A0, 0x3000);
	lcdCommandWrite(0x00A3, 0x0010);
	//-------------- Panel Control -------------------//

	lcdCommandWrite(0x0007, 0x0173);        // 262K color and display ON
}

void inline  lcdInitGPIO() {
	bcm2835_gpio_fsel(RPI_GPIO_P1_24, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_fsel(RPI_GPIO_P1_22, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_fsel(RPI_GPIO_P1_10, BCM2835_GPIO_FSEL_OUTP);
	bcm2835_gpio_fsel(RPI_GPIO_P1_12, BCM2835_GPIO_FSEL_OUTP);

	bcm2835_spi_begin();
	bcm2835_spi_setBitOrder(BCM2835_SPI_BIT_ORDER_MSBFIRST);
	bcm2835_spi_setDataMode(BCM2835_SPI_MODE3);
	bcm2835_spi_setClockDivider(BCM2835_SPI_CLOCK_DIVIDER_2);
	bcm2835_gpio_clr(RPI_GPIO_P1_12);
	bcm2835_gpio_clr(RPI_GPIO_P1_10);
	delay(100);
	bcm2835_gpio_set(RPI_GPIO_P1_10);
	delay(100);
}

void lcdInit() {
	printMsg("Initializing TFT Screen");
	lcdInitGPIO();
	lcdPowerOn();
	lcdSetup();
}

