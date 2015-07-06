#
FREETYPE_DIR=/usr
# FREETYPE_DIR=/usr/local

CC	= gcc
CCOPT	= -Wall -O2 -g
INCLS	+= -I$(FREETYPE_DIR)/include/freetype2
INCLS   += -I$(FREETYPE_DIR)/include
INCLS   += -I/usr/local/include
INCLS   +=  -DDEBUG_LEVEL=2
LOPT    = -lfreetype

SYSTEM_OS:= $(shell uname)

DEFS   += -L$(FREETYPE_DIR)/lib
DEFS   += -L/usr/local/lib

ifeq ($(SYSTEM_OS),Linux)
	DEFS+=-DHAVE_ICONV
else
	ifeq ($(SYSTEM_OS),FreeBSD)
		LOPT+=-liconv
		DEFS+=-DHAVE_ICONV
		DEFS+=-R$(FREETYPE_DIR)/lib
	else
		ifeq ($(SYSTEM_OS),SunOS)
			# LOPT   += -liconv
			DEFS+=-R$(FREETYPE_DIR)/lib
		endif
	endif
endif

CFLAGS = $(CCOPT) $(INCLS) $(DEFS) $(OSDEPOPT)

SRC = main.c ttpseng.c
OBJ = $(SRC:.c=.o)
VER := $(shell sed -e 's/.*\"\(.*\)\"/\1/' VERSION)
LEXYACCTMP = lex.yy.c y.tab.c y.tab.h y.output y.tab.o lex.yy.o

GCCVER := $(shell gcc -v 2>&1 | grep "gcc version" | awk '{print $$3}')
OSREL  := $(shell uname -r | sed 's/\([.0-9]*\).*/\1/')

CFLAGS += -DVERSION=\"$(VER)\"
TARGET = big5ps
CLEANFILES = $(OBJ) $(TARGET) ${LEXYACCTMP}

.c.o:
	@rm -f $@
	$(CC) $(CFLAGS) -c $*.c

all: $(TARGET)

big5ps:	$(OBJ)
	@rm -f $@
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LOPT)

lex.yy.c:	lexer.l
	flex lexer.l

y.tab.c:	parser.y
	bison -v -t -d -y parser.y

install:
	install -m 755 -o bin -g bin -s big5ps /usr/local/bin

clean:
	rm -f $(CLEANFILES)
