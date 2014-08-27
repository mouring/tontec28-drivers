//
//  lcd280tests.c
//  mzt280
//
//  Created by Galen Rhodes on 5/31/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#include "lcd280tests.h"

#define CLR_BLACK   0x0000
#define CLR_WHITE   0xFFFF
#define CLR_RED     0xF800
#define CLR_GREEN   0x07e0
#define CLR_BLUE    0x001f
#define CLR_YELLOW  0xffe0
#define CLR_CYAN    0x07ff
#define CLR_MAGENTA 0xf81f

#define OPENCLR     ((size_t)8)

uint16_t colors2[] = {
	CLR_BLACK, CLR_WHITE, CLR_RED, CLR_BLUE, CLR_GREEN, CLR_YELLOW, CLR_CYAN, CLR_MAGENTA, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

void inline lcdDisplayTestResults(int pixelCount, double avgTime1, double avgTime2) {
	char   *timeMessage = "Average time for %s write of %d pixels: %.3fms. Or %.6fms/pixel.";
	double mspp1        = (avgTime1 / pixelCount);
	double mspp2        = (avgTime2 / pixelCount);

	printfMsg(timeMessage, "bulk", pixelCount, avgTime1, mspp1);
	printfMsg(timeMessage, "individual pixel", pixelCount, avgTime2, mspp2);
}

void inline lcdSlowFill(uint16_t color, LCDBounds *bounds) {
	PixelPoint start = bounds->pStart;
	PixelPoint end   = bounds->pEnd;

	lcdSetUpdateBoundsOnly(bounds);

	for(int32_t dy = start.dy; dy < end.dy; dy++) {
		for(int32_t dx = start.dx; dx < end.dx; dx++) {
			lcdCommandWrite(XP, (uint16_t)dx);
			lcdCommandWrite(YP, (uint16_t)dy);
			lcdCommandWrite(PC, color);
		}
	}
}

void inline lcdClearScreen(ScreenSize *screenSize) {
	uint32_t xsize = screenSize->xsize;
	uint32_t ysize = screenSize->ysize;
	uint32_t area  = (xsize * ysize);

	lcdCommandWrite(XE, (uint16_t)(xsize - 1));
	lcdCommandWrite(YE, (uint16_t)(ysize - 1));
	lcdCommandWrite(YS, 0);
	lcdCommandWrite(XS, 0);
	lcdCommandWrite(XP, 0);
	lcdCommandWrite(YP, 0);
	lcdRegisterWrite(PC);
	bcm2835_gpio_clr(RPI_GPIO_P1_24);
	bcm2835_gpio_set(RPI_GPIO_P1_22);

	for(uint32_t p = 0; p < area; p++) {
		lcdDataWrite(0x0000);
	}

	bcm2835_gpio_set(RPI_GPIO_P1_24);
}

double inline lcdComplexTestChoice(int fast, uint16_t cc, ScreenSize gridSize, ScreenSize gridPixelSize, LCDBounds bounds, uint16_t *ci) {
	int        gridCount = (gridSize.xsize * gridSize.ysize);
	PixelColor co        = *ci;

	lcdClearScreen(&bounds.size);
	double tt = 0.0;
	double st = getHiResTimeDouble();

	for(int i = 0; i < gridCount; i++) {
		bounds.pStart.dx = ((i % gridSize.xsize) * gridPixelSize.xsize);
		bounds.pStart.dy = ((i / gridSize.xsize) * gridPixelSize.ysize);
		bounds.pEnd.dx   = (bounds.pStart.dx + gridPixelSize.xsize);
		bounds.pEnd.dy   = (bounds.pStart.dy + gridPixelSize.ysize);

		if(fast) {
			lcdFastFill(colors2[(co++) % cc], &bounds);
		}
		else {
			lcdSlowFill(colors2[(co++) % cc], &bounds);
		}

		tt += (getHiResTimeDouble() - st);
		st = getHiResTimeDouble();
	}

	*ci = (co % cc);
	return (tt / gridCount);
}

void inline lcdComplexTest(ScreenSize gridSize, ScreenSize gridPixelSize, LCDBounds bounds, uint16_t cc) {
	int      iterations = 25;
	double   totalTime1 = 0.0;
	double   totalTime2 = 0.0;
	uint16_t colorIndex = 0;

	lcdClearScreen(&bounds.size);
	printMsg("Starting comparison of bulk verses individual pixel times.");

	for(int k = 0; k < iterations; k++) {
		totalTime1 += lcdComplexTestChoice(1, cc, gridSize, gridPixelSize, bounds, &colorIndex);
		totalTime2 += lcdComplexTestChoice(0, cc, gridSize, gridPixelSize, bounds, &colorIndex);
	}

	lcdDisplayTestResults((gridPixelSize.xsize * gridPixelSize.ysize), (totalTime1 / iterations), (totalTime2 / iterations));
}

void inline lcdSimpleTest(ScreenSize gridSize, ScreenSize gridPixelSize, LCDBounds bounds, uint16_t cc) {
	int    gridCount = (gridSize.xsize * gridSize.ysize);
	double startTime = getHiResTimeDouble();

	lcdClearScreen(&bounds.size);
	startTime = lcdPrintTimeElapsed(1, startTime);

	for(int i = 0; i < gridCount; i++) {
		bounds.pStart.dx = ((i % gridSize.xsize) * gridPixelSize.xsize);
		bounds.pStart.dy = ((i / gridSize.xsize) * gridPixelSize.ysize);
		bounds.pEnd.dx   = (bounds.pStart.dx + gridPixelSize.xsize);
		bounds.pEnd.dy   = (bounds.pStart.dy + gridPixelSize.ysize);

		lcdFastFill(colors2[i % cc], &bounds);
		startTime = lcdPrintTimeElapsedNoWait(0, startTime);
	}
}

int lcdTest(ScreenSize ssize) {
	ScreenSize gridSize      = lcdMakeScreenSize(5, 5);
	ScreenSize gridPixelSize = lcdMakeScreenSize(ssize.xsize / gridSize.xsize, ssize.ysize / gridSize.ysize);
	LCDBounds  bounds        = lcdMakeBounds(0, 0, 0, 0, ssize.xsize, ssize.ysize);

	uint16_t cc = (int)(sizeof(colors2) / sizeof(colors2[0]));

	srand((unsigned int)getHiResTime());
	for(size_t i = OPENCLR; i < cc; i++) {
		int red   = (rand() % 32);
		int green = (rand() % 32);
		int blue  = (rand() % 32);

		colors2[i] = (uint16_t)((red << 11) | (green << 5) | blue);
		printfMsg("Random Color %02d> %02x-%02x-%02x", (int)i, red, green, blue);
	}

	lcdSimpleTest(gridSize, gridPixelSize, bounds, cc);
	lcdComplexTest(gridSize, gridPixelSize, bounds, cc);

	return 1;
}
