# Makefile for the knockoutmonkeys project
# work in progress

##########################################################
## Compiler configuration			                    ##
##########################################################

INCDIR = include
CC = gcc
CFLAGS = -I$(INCDIR) ##maybe have to move this one
#SRC = server.c client.c



##########################################################
## Source data configuration				            ##
##########################################################

#MAIN=fiotest.c
#C_SRC = $(shell find -name '*.c'|grep -v $(MAIN))

#SRCDIR = src
OBJDIR = obj
LIBDIR = lib

LIBS = -lm

##########################################################
## Constant declaration					                ##
##########################################################

_DEPS = fiotest.h
DEPS = $(patsubst %,$(INCDIR)/%,$(_DEPS))

_OBJ = fiotest.o
OBJ = $(patsubst %,$(OBJDIR)/%,$(_OBJ))



##########################################################
## Target configuration					                ##
##########################################################

$(OBJDIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)


fiotest: $(OBJ)
	gcc -o $@ $^ $(CFLAGS) $(LIBS) 


.PHONY: clean

clean:
	rm -f $(OBJDIR)/*.o *~ core $(INCDIR)/*~
