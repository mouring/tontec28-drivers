//
//  lcd280types.h
//  mzt280
//
//  Created by Galen Rhodes on 6/4/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#ifndef mzt280_lcd280types__h_
#define mzt280_lcd280types__h_

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

#include "lcd280defines.h"
#include "bcm2835.h"
#include "lcd280timer.h"

typedef uint16_t PixelColor;
typedef int8_t   Bool;

typedef struct __PIXEL_POINT_ST_ {
	int32_t dx;
	int32_t dy;
}                PixelPoint;

typedef struct __PIXEL_DATA_ST_ {
	PixelPoint point;
	PixelColor color;
}                PixelData;

typedef struct __SCREEN_SIZE_ST_ {
	uint32_t xsize;
	uint32_t ysize;
}                ScreenSize;

typedef struct __LCD_BOUNDS_ST_ {
	PixelPoint pStart;
	PixelPoint pEnd;
	ScreenSize size;
}                LCDBounds;

typedef struct __LCD_DATA_ST {
	LCDBounds  bounds;
	uint32_t   screenPixels;
	uint32_t   screenMemorySize;
	PixelColor *drawBuffer;
	PixelColor *diffBuffer;
	uint32_t   changedPixelCount;
	PixelData  *changedPixels;
	Bool       printElapsedTime;
}                LCDData;

#pragma push
#pragma thumb

int32_t inline qMax(int32_t a, int32_t b) {
	return (a < b ? b : a);
}

int32_t inline qMin(int32_t a, int32_t b) {
	return (a < b ? a : b);
}

uint32_t inline lcdAreaOfPoints(PixelPoint *pStart, PixelPoint *pEnd) {
	uint32_t dx = (uint32_t)(qMax(pStart->dx, pEnd->dx) - qMin(pStart->dx, pEnd->dx));
	uint32_t dy = (uint32_t)(qMax(pStart->dy, pEnd->dy) - qMin(pStart->dy, pEnd->dy));
	return (dx * dy);
}

int32_t inline lcdAreaOfBounds(LCDBounds *bounds) {
	return lcdAreaOfPoints(&bounds->pStart, &bounds->pEnd);
}

ScreenSize inline *lcdPopulateScreenSize(ScreenSize *ssize, uint32_t xsize, uint32_t ysize) {
	ssize->xsize = xsize;
	ssize->ysize = ysize;
	return ssize;
}

ScreenSize inline lcdMakeScreenSize(uint32_t xsize, uint32_t ysize) {
	ScreenSize ssize;
	lcdPopulateScreenSize(&ssize, xsize, ysize);
	return ssize;
}

LCDBounds inline lcdMakeBounds(int32_t sx, int32_t sy, int32_t ex, int32_t ey, uint32_t xsize, uint32_t ysize) {
	LCDBounds bounds;
	lcdPopulateScreenSize(&bounds.size, xsize, ysize);
	bounds.pStart.dx = sx;
	bounds.pStart.dy = sy;
	bounds.pEnd.dx   = ex;
	bounds.pEnd.dy   = ey;
	return bounds;
}

LCDBounds inline lcdMakeFullScreenBounds(ScreenSize *screenSize) {
	return lcdMakeBounds(0, 0, screenSize->xsize, screenSize->ysize, screenSize->xsize, screenSize->ysize);
}

PixelPoint inline lcdMakePixelPoint(int32_t dx, int32_t dy) {
	PixelPoint point;
	point.dx = dx;
	point.dy = dy;
	return point;
}

PixelData inline lcdMakePixelData(int32_t dx, int32_t dy, PixelColor color) {
	PixelData data;
	data.color = color;
	data.point = lcdMakePixelPoint(dx, dy);
	return data;
}

#pragma pop

#endif
