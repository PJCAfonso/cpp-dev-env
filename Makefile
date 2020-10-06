CPP_STD=		c++11

SRC_DIR=		src/
SRC_FILE=		main.cpp
SOURCE=			${SRC_DIR}${SRC_FILE}

OUT_DIR=		bin/
OUT_FILE=		${basename ${SRC_FILE}}
OUTPUT=			${OUT_DIR}${OUT_FILE}

INC_DIR=		${SRC_DIR}

build_run: build run

clean:
	@rm -f ${OUT_DIR}*
	@echo "-> Cleaned ${OUT_DIR}"

build: clean
	@g++ -std=${CPP_STD} -g -Wall -I ${INC_DIR} ${SOURCE} -o ${OUTPUT}
	@echo "-> Built ${SOURCE}"

run:
	@echo "-> ${OUT_FILE} started \n"
	@${OUTPUT}
	@echo "\n <- ${OUT_FILE} ended"