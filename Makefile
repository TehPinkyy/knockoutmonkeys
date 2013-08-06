# Makefile for the knockoutmonkeys project
# creation in progress

########################################################
## Compiler configuration
#######################################################
CC = gcc
COPTIONS = -O
SRC = server.c client.c


########################################################
## Source data configuration
########################################################

MAIN=herpderp.c

C_SRC = $(shell find -name '*.c'|grep -v $(MAIN))
########################################################
## Target configuration
########################################################

all:    $(CC) $(SRC) $(COPTIONS)

clean:  rm -fv .*o
