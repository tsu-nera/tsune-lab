﻿# Generated automatically from Makefile.in by configure.
# Copyright (c) 2002-2011 Kawahara Lab., Kyoto University
# Copyright (c) 2002-2005 Shikano Lab., Nara Institute of Science and Technology
# Copyright (c) 2005-2011 Julius project team, Nagoya Institute of Technology
# All rights reserved
#
# $Id: Makefile.in,v 1.5 2011/04/29 05:09:14 sumomo Exp $
#
SHELL=/bin/sh
.SUFFIXES:
.SUFFIXES: .c .o
.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

CC=gcc
CFLAGS=-g -O2
CPPFLAGS=  
LDFLAGS= 
RM=/bin/rm -f
prefix=/usr/local
exec_prefix=${prefix}
INSTALL=/usr/bin/install -c

OBJ=jcontrol.o server.o japi_misc.o japi_grammar.o japi_process.o
TARGET=jcontrol

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ $(OBJ) $(LDFLAGS)

install: install.bin

install.bin: $(TARGET)
	${INSTALL} -d ${exec_prefix}/bin
	${INSTALL} $(TARGET) ${exec_prefix}/bin

clean:
	$(RM) $(OBJ)
	$(RM) config.log config.cache
	$(RM) *~ core
	$(RM) $(TARGET) $(TARGET).exe

distclean:
	$(RM) $(OBJ)
	$(RM) config.log config.cache
	$(RM) *~ core
	$(RM) $(TARGET) $(TARGET).exe
	$(RM) config.status
	$(RM) Makefile
