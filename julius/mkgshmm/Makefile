﻿# Generated automatically from Makefile.in by configure.
# Copyright (c) 2001-2011 Kawahara Lab., Kyoto University
# Copyright (c) 2001-2005 Shikano Lab., Nara Institute of Science and Technology
# Copyright (c) 2005-2011 Julius project team, Nagoya Institute of Technology
# All rights reserved

SHELL=/bin/sh
RM=/bin/rm -f
prefix=/usr/local
exec_prefix=${prefix}
INSTALL=/usr/bin/install -c

############################################################

TARGET=mkgshmm

all: $(TARGET)

$(TARGET):
	@echo 'nothing to do. just do "make install"'

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
	$(RM) config.cache config.log config.status
	$(RM) Makefile
