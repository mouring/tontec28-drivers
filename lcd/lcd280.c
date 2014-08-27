//
//  lcd280.c
//  mzt280
//
//  Created by Galen Rhodes on 5/27/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#include <sys/fcntl.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/errno.h>
#include "lcd280.h"

#ifdef __ONPI
#include <linux/fb.h>
#else
#include "linux/fb.h"

#endif

typedef struct fb_var_screeninfo VInfo;
typedef struct fb_fix_screeninfo FInfo;

void inline lcdPrintCLibErrorMessage(char const *string) {
	printfErr("%s: %s", string, strerror(errno));
}

int lcdUpdateLoop(LCDData *lcdData) {
	/*
	 * For the first time through we are simply going to copy the
	 * data to the diffBuffer and do a bulk write to the screen.
	 */
	int    ret       = 0;
	double startTime = getHiResTimeDouble();

	memcpy(lcdData->diffBuffer, lcdData->drawBuffer, lcdData->screenMemorySize);
	lcdFullScreenWrite(lcdData);

#pragma push
#pragma thumb

	while(ret == 0) {
		startTime = lcdPrintTimeElapsed(lcdData->printElapsedTime, startTime);
		ret       = lcdUpdateDisplay(lcdData);
	}

#pragma pop

	return ret;
}

int inline lcdMemoryMapFrameBuffer(int fbfd, LCDData *lcdData) {
	return (int)(lcdData->drawBuffer = (PixelColor *)mmap(0, lcdData->screenMemorySize, PROT_READ, MAP_SHARED, fbfd, 0));
}

int lcdUpdateSetup(int fbfd, LCDData *lcdData, VInfo vinfo, FInfo finfo, Bool printElapsedTime) {
	int ret = 0;

	lcdData->changedPixelCount = 0;
	lcdData->printElapsedTime  = printElapsedTime;
	lcdData->screenMemorySize  = finfo.smem_len;
	lcdData->bounds.size       = lcdMakeScreenSize(vinfo.xres, vinfo.yres);
	lcdData->screenPixels      = (lcdData->bounds.size.xsize * lcdData->bounds.size.ysize);

	printfMsg(" Bits Per Pixel: %d", vinfo.bits_per_pixel);
	printfMsg("           xres: %d", lcdData->bounds.size.xsize);
	printfMsg("           yres: %d", lcdData->bounds.size.ysize);
	printfMsg("    Memory Size: %d", lcdData->screenMemorySize);

	if(lcdMemoryMapFrameBuffer(fbfd, lcdData) == -1) {
		lcdPrintCLibErrorMessage("Failed to map framebuffer device to memory");
		ret = 4;
	}
	else {
		lcdData->changedPixels = (PixelData *)malloc(lcdData->screenPixels * sizeof(PixelData));

		if(lcdData->changedPixels) {
			lcdData->diffBuffer = (PixelColor *)malloc(lcdData->screenMemorySize);

			if(lcdData->diffBuffer) {
				return 0;
			}
			else {
				lcdPrintCLibErrorMessage("Unable to create difference buffer");
				ret = 1;
			}

			free(lcdData->changedPixels);
		}
		else {
			lcdPrintCLibErrorMessage("Unable to create changed pixels buffer");
			ret = 1;
		}

		munmap(lcdData->drawBuffer, lcdData->screenMemorySize);
	}

	return ret;
}

int lcdMain(Bool printElapsedTime) {
	LCDData lcdData;
	VInfo   vinfo;
	FInfo   finfo;
	int     fbfd = open(FRAMEBUFFER_DEVICE, O_RDONLY);
	int     ret  = 0;

	if(fbfd) {
		if(ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo) || ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo)) {
			lcdPrintCLibErrorMessage("Error reading screen information");
			ret = 3;
		}
		else {
			ret = lcdUpdateSetup(fbfd, &lcdData, vinfo, finfo, printElapsedTime);

			if(ret == 0) {
				ret = lcdUpdateLoop(&lcdData);
				free(lcdData.diffBuffer);
				free(lcdData.changedPixels);
				munmap(lcdData.drawBuffer, lcdData.screenMemorySize);
			}
		}

		close(fbfd);
	}
	else {
		lcdPrintCLibErrorMessage("Cannot open framebuffer device");
		ret = 2;
	}

	return ret;
}
