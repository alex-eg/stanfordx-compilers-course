SRC = cool.flex
CSRC = lextest.cc utilities.cc stringtab.cc handle_flags.cc cool-lex.cc
OBJS = ${CSRC:.cc=.o}

CC = g++
CFLAGS = -g -Wall -Wno-unused -Wno-write-strings -I.
LIB = -lfl

FFLAGS = -d -ocool-lex.cc
FLEX = flex ${FFLAGS}

lexer: ${OBJS}
	${CC} ${CFLAGS} ${OBJS} ${LIB} -o lexer

cool-lex.cc: cool.flex
	${FLEX} cool.flex

.cc.o:
	${CC} ${CFLAGS} -c $<

test: lexer
	./lexer hello_world.cl

clean:
	rm -f *.o lexer cool-lex.cc

.PHONY: test clean
