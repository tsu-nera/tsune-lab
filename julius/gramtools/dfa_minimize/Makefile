﻿# Generated automatically from Makefile.in by configure.
# Copyright (c) 1991-2011 Kawahara Lab., Kyoto University
# Copyright (c) 2000-2005 Shikano Lab., Nara Institute of Science and Technology
# Copyright (c) 2005-2011 Julius project team, Nagoya Institute of Technology
# All rights reserved

SHELL=/bin/sh
.SUFFIXES:
.SUFFIXES: .c .o
.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

LIBSENT=../../libsent
CC=gcc
CFLAGS=-g -O2
CPPFLAGS=  -DHAVE_LIBFL=1 -DHAVE_MALLOC_H=1  -I$(LIBSENT)/include `$(LIBSENT)/libsent-config --cflags`
LDFLAGS= -lfl  -L$(LIBSENT) `$(LIBSENT)/libsent-config --libs`
RM=/bin/rm -f
prefix=/usr/local
exec_prefix=${prefix}
INSTALL=/usr/bin/install -c

############################################################

OBJ = dfa_minimize.o
TARGET = dfa_minimize

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ $(OBJ) $(LDFLAGS)

############################################################

install: install.bin

install.bin: $(TARGET)
	${INSTALL} -d ${exec_prefix}/bin
	${INSTALL} $(TARGET) ${exec_prefix}/bin

############################################################

clean:
	$(RM) *.o *~ core
	$(RM) $(TARGET) $(TARGET).exe

distclean:
	$(RM) *.o *~ core
	$(RM) $(TARGET) $(TARGET).exe
	$(RM) Makefile
