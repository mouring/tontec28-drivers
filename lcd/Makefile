#
#
#
CC=gcc
LD=gcc

TESTON=-DLCDTEST=1
TESTOFF=-DNOLCDTEST=1
C99FLG=-std=c99 -fno-gnu89-inline

CFLAGS=-Ofast -mhard-float -mfloat-abi=hard -mcpu=arm1176jzf-s

DEFS=-D__ONPI=1
CDEFS=$(DEFS) $(C99FLG)

LINKOPTS=-lrt
STRIPOPTS=--strip-all

BASEOBJS=mzt280.o lcd280.o lcd280timer.o bcm2835.o lcd280initialization.o lcd280tests.o
HEADERS=*.h
PROGS=mzt280 mzt280test

all: $(PROGS)

clean:
	rm -f *.o $(PROGS)

mzt280: $(BASEOBJS) lcd280common.o
	$(LD) $(LINKOPTS) -o mzt280 $(BASEOBJS) lcd280common.o
	strip $(STRIPOPTS) mzt280

mzt280test: $(BASEOBJS) lcd280commontest.o
	$(LD) $(LINKOPTS) -o mzt280test $(BASEOBJS) lcd280commontest.o

bcm2835.o: bcm2835.c bcm2835.h
	$(CC) $(TESTOFF) $(DEFS) $(CFLAGS) -c bcm2835.c

lcd280timer.o: lcd280timer.c lcd280timer.h
	$(CC) $(TESTOFF) $(DEFS) $(CFLAGS) -c lcd280timer.c

lcd280.o: lcd280.c $(HEADERS)
	$(CC) $(TESTOFF) $(CDEFS) $(CFLAGS) -c lcd280.c

lcd280initialization.o: lcd280initialization.c $(HEADERS)
	$(CC) $(TESTOFF) $(CDEFS) $(CFLAGS) -c lcd280initialization.c

lcd280common.o: lcd280common.c $(HEADERS)
	$(CC) $(TESTOFF) $(CDEFS) $(CFLAGS) -c lcd280common.c

lcd280commontest.o: lcd280common.c $(HEADERS)
	$(CC) $(TESTON) $(CDEFS) $(CFLAGS) -o lcd280commontest.o -c lcd280common.c

lcd280tests.o: lcd280tests.c $(HEADERS)
	$(CC) $(TESTON) $(CDEFS) $(CFLAGS) -c lcd280tests.c

mzt280.o: mzt280.c $(HEADERS)
	$(CC) $(TESTOFF) $(CDEFS) $(CFLAGS) -c mzt280.c
