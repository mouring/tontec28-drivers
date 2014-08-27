//
//  lcd280common.c
//  mzt280
//
//  Created by Galen Rhodes on 5/29/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#include "lcd280common.h"
#include "lcd280tests.h"
#include "lcd280.h"
#include <stdarg.h>

char msgBuffer03[64 * 1024];

void printfMsg(const char *fmt, ...) {
	va_list argp;
	va_start(argp, fmt);
	vsprintf(msgBuffer03, fmt, argp);
	va_end(argp);
	printMsg(msgBuffer03);
}

void printfErr(const char *fmt, ...) {
	va_list argp;
	va_start(argp, fmt);
	vsprintf(msgBuffer03, fmt, argp);
	va_end(argp);
	printErr(msgBuffer03);
}

int lcdStartup(Bool printTime) {
	if(bcm2835_init()) {
		int        exitCode = 0;
		ScreenSize ssize    = lcdMakeScreenSize(320, 240);

		lcdInit();

#ifdef NOLCDTEST
		exitCode = !lcdMain(printTime);
#endif

		return (exitCode ? exitCode : !lcdTest(ssize));
	}
	else {
		printErr("BCM2835 GPIO Initialization Error.");
		return 3;
	}
}
