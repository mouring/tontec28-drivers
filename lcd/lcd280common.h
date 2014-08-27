//
//  lcd280common.h
//  mzt280
//
//  Created by Galen Rhodes on 5/29/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#ifndef mzt280_lcd280common_h_
#define mzt280_lcd280common_h_

#include "lcd280types.h"
#include "lcd280initialization.h"

int lcdStartup(Bool printTime);

void printfMsg(const char *fmt, ...);

void printfErr(const char *fmt, ...);

void inline printMsg(const char *msg) {
	printf("INFO: %s\r\n", msg);
}

void inline printErr(const char *err) {
	printf("ERROR: %s\r\n", err);
}

#pragma push
#pragma thumb

void inline lcdDataWrite(uint16_t val) {
	bcm2835_spi_transfer((uint8_t)((val & 0xFF00) >> 8));
	bcm2835_spi_transfer((uint8_t)(val & 0x00FF));
}

void inline lcdCommandWrite(uint16_t index, uint16_t val) {
	bcm2835_gpio_clr(RPI_GPIO_P1_24);
	bcm2835_gpio_clr(RPI_GPIO_P1_22);
	lcdDataWrite(index);
	bcm2835_gpio_set(RPI_GPIO_P1_22);
	lcdDataWrite(val);
	bcm2835_gpio_set(RPI_GPIO_P1_24);
}

void inline lcdRegisterWrite(uint16_t index) {
	bcm2835_gpio_clr(RPI_GPIO_P1_24);
	bcm2835_gpio_clr(RPI_GPIO_P1_22);
	lcdDataWrite(index);
	bcm2835_gpio_set(RPI_GPIO_P1_24);
}

double inline lcdCalcElapsedTime(int printElapsedTime, double startTime) {
	double elapsed = (getHiResTimeDouble() - startTime);

	if(printElapsedTime) {
		printfMsg("Elapsed time: %.3fms", elapsed);
	}

	return elapsed;
}

double inline lcdPrintTimeElapsedNoWait(int printElapsedTime, double startTime) {
	lcdCalcElapsedTime(printElapsedTime, startTime);
	return getHiResTimeDouble();
}

double inline lcdPrintTimeElapsed(int printElapsedTime, double startTime) {
	double delay   = (MILLISECOND_SECOND / (double)10.0);
	double elapsed = lcdCalcElapsedTime(printElapsedTime, startTime);

	if(elapsed < delay) {
		millisecondDelay(delay - elapsed);
	}

	return getHiResTimeDouble();
}

void inline lcdSetUpdateBoundsOnly(LCDBounds *bounds) {
	lcdCommandWrite(XS, (uint16_t)bounds->pStart.dx);
	lcdCommandWrite(XE, (uint16_t)(bounds->pEnd.dx - 1));
	lcdCommandWrite(YS, (uint16_t)bounds->pStart.dy);
	lcdCommandWrite(YE, (uint16_t)(bounds->pEnd.dy - 1));
}

void inline lcdSetUpdateBoundsAndPoint(LCDBounds *bounds, PixelPoint *point) {
	lcdSetUpdateBoundsOnly(bounds);
	lcdCommandWrite(XP, (uint16_t)point->dx);
	lcdCommandWrite(YP, (uint16_t)point->dy);
}

void inline lcdFastFill(PixelColor color, LCDBounds *bounds) {
	int area = lcdAreaOfBounds(bounds);

	lcdSetUpdateBoundsAndPoint(bounds, &bounds->pStart);
	lcdRegisterWrite(PC);
	bcm2835_gpio_clr(RPI_GPIO_P1_24);
	bcm2835_gpio_set(RPI_GPIO_P1_22);

	for(int p = 0; p < area; p++) {
		lcdDataWrite(color);
	}

	bcm2835_gpio_set(RPI_GPIO_P1_24);
}

void inline lcdFastWrite(LCDData *lcdData) {
	LCDBounds lcBounds = lcdData->bounds;
	uint32_t  mx       = lcBounds.size.xsize;
	int32_t   sx       = lcBounds.pStart.dx;
	int32_t   sy       = lcBounds.pStart.dy;
	int32_t   ex       = lcBounds.pEnd.dx;
	int32_t   ey       = lcBounds.pEnd.dy;

	lcdSetUpdateBoundsAndPoint(&lcBounds, &lcBounds.pStart);
	lcdRegisterWrite(PC);
	bcm2835_gpio_clr(RPI_GPIO_P1_24);
	bcm2835_gpio_set(RPI_GPIO_P1_22);

	for(int32_t dy = sy; dy < ey; dy++) {
		for(int32_t dx = sx; dx < ex; dx++) {
			lcdDataWrite(lcdData->diffBuffer[(dy * mx) + dx]);
		}
	}

	bcm2835_gpio_set(RPI_GPIO_P1_24);
}

void inline lcdWriteChangedPixel(PixelData *pixelData) {
	lcdCommandWrite(XP, (uint16_t)pixelData->point.dx);
	lcdCommandWrite(YP, (uint16_t)pixelData->point.dy);
	lcdCommandWrite(PC, pixelData->color);
}

void inline lcdSlowWrite(LCDData *lcdData) {
	uint32_t maxCh = lcdData->changedPixelCount;

	lcdSetUpdateBoundsOnly(&lcdData->bounds);

	for(uint32_t ch = 0; ch < maxCh; ch++) {
		lcdWriteChangedPixel(lcdData->changedPixels + ch);
	}
}

uint32_t inline lcdFindChangedPixels(LCDData *lcdData) {
	uint32_t   changes = 0;
	PixelColor *p1     = lcdData->drawBuffer;
	PixelColor *p2     = lcdData->diffBuffer;
	uint32_t   maxx    = lcdData->bounds.size.xsize;
	uint32_t   maxy    = lcdData->bounds.size.ysize;

	lcdData->bounds.pStart = lcdMakePixelPoint(maxx, maxy);
	lcdData->bounds.pEnd   = lcdMakePixelPoint(1, 1);

	/*
	 * Now run though the frame buffer and see what's changed.
	 */
	for(int32_t dy = 0; dy < maxy; dy++) {
		for(int32_t dx = 0; dx < maxx; dx++) {
			PixelColor color = *p1++;

			if(color != *p2) {
				*p2 = color;
				lcdData->changedPixels[changes++] = lcdMakePixelData(dx, dy, color);
				lcdData->bounds.pStart.dx = qMin(lcdData->bounds.pStart.dx, dx);
				lcdData->bounds.pStart.dy = qMin(lcdData->bounds.pStart.dy, dy);
				lcdData->bounds.pEnd.dx   = qMax(lcdData->bounds.pEnd.dx, dx + 1);
				lcdData->bounds.pEnd.dy   = qMax(lcdData->bounds.pEnd.dy, dy + 1);
			}

			p2++;
		}
	}

	return (lcdData->changedPixelCount = changes);
}

int inline lcdUpdateDisplay(LCDData *lcdData) {
	uint32_t changes = lcdFindChangedPixels(lcdData);

	if(changes) {
		long slowTime = (changes * 8);
		long fastTime = lcdAreaOfBounds(&lcdData->bounds);

		/*
		 * Which method will be faster?
		 */
		if(slowTime < fastTime) {
			lcdSlowWrite(lcdData);
		}
		else {
			lcdFastWrite(lcdData);
		}
	}

	return 0;
}

void inline lcdFullScreenWrite(LCDData *lcdData) {
	lcdData->bounds = lcdMakeFullScreenBounds(&lcdData->bounds.size);
	lcdFastWrite(lcdData);
}

#pragma pop

#endif
