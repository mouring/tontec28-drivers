//
//  lcd280defines.h
//  mzt280
//
//  Created by Galen Rhodes on 6/3/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#ifndef mzt280_lcd280defines__h_
#define mzt280_lcd280defines__h_

// #ifndef LCD_INVERT_DISPLAY
// #define LCD_INVERT_DISPLAY 1
// #endif

#ifndef LCDTEST
#ifndef NOLCDTEST
#define NOLCDTEST 1
#endif
#else
#ifdef NOLCDTEST
#undef NOLCDTEST
#endif
#endif

#define XP    0x021
#define YP    0x020
#define XS    0x052
#define XE    0x053
#define YS    0x050
#define YE    0x051
#define PC    0x022

#define FRAMEBUFFER_DEVICE  "/dev/fb0"

#endif
