//
//  mzt280.c
//  mzt280
//
//  Created by Galen Rhodes on 5/26/14.
//  Copyright (c) 2014 Galen Rhodes. All rights reserved.
//

#include "lcd280common.h"

int main(int argc, char *argv[]) {
	Bool printTime = 0;

	for(int i = 0; i < argc; i++) {
		if(strcmp(argv[i], "-p") == 0) {
			printTime = 1;
		}
	}

	if(printTime) {
		printMsg("Printing Elapsed Time...");
	}

	return lcdStartup(printTime);
}

