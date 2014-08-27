//
//  lcdtimer.c
//  mzt280
//
//  Created by Galen Rhodes on 5/27/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#include "lcd280timer.h"
#include <time.h>

typedef struct timespec timerec;

/*
 * Returns the current system time in milliseconds as a double precision floating point.
 */
double getHiResTimeDouble() {
	/*
	 * The problem on the Raspberry Pi is that we don't
	 * really have nanosecond precision.  And a long
	 * integer isn't going to really handle the time
	 * in nanoseconds anyways.  So we're simply going to
	 * convert the nanoseconds to milliseconds and work with
	 * that.
	 */
	timerec t;
#ifdef __ONPI
    clock_gettime(CLOCK_MONOTONIC_RAW, &t);
#else
	t.tv_sec  = 0;
	t.tv_nsec = NANO_MILLISECOND;
#endif

	return ((t.tv_sec * 1000.0) + (t.tv_nsec / 1000000.0));
}

/*
 * Returns the current system time in milliseconds.
 */
long getHiResTime() {
	return (long)getHiResTimeDouble();
}

void millisecondDelay(double millis) {
	timerec t1, t2;
	t1.tv_sec  = (long)(millis / MILLISECOND_SECOND);
	t1.tv_nsec = (long)((millis - (double)(t1.tv_sec * MILLISECOND_SECOND)) * NANO_MILLISECOND);

	int res = nanosleep(&t1, &t2);

	while(res) {
		res = nanosleep(&t2, &t1);

		if(res) {
			res = nanosleep(&t1, &t2);
		}
	}
}
