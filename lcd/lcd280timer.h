//
//  lcdtimer.h.h
//  mzt280
//
//  Created by Galen Rhodes on 5/27/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#ifndef mzt280_lcdtimer_h_
#define mzt280_lcdtimer_h_

#define NANO_MILLISECOND    ((long)1000000)
#define MILLISECOND_SECOND  ((long)1000)

void millisecondDelay(double millis);

/*
 * Returns the current system time in milliseconds.
 */
long getHiResTime();

/*
 * Returns the current system time in milliseconds as a double precision floating point.
 */
double getHiResTimeDouble();

#endif
