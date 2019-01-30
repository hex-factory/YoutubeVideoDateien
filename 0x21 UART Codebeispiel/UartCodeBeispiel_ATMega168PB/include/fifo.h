/*
 * fifo.h
 *
 * Created: 12.08.2018 12:25:18
 *  Author: kurjon
 */ 


#ifndef FIFO_H_
#define FIFO_H_

#include <stdint.h>
#include <stdbool.h>

typedef enum eFifoIndex{
	FIFO_UART_TX = 0,
	FIFO_UART_RX,
	NUMBER_OF_FIFOS  // do not use this as index
} fifoIndex_t;

void	fifo_write	(fifoIndex_t idx, uint8_t din);
uint8_t fifo_read	(fifoIndex_t idx);
bool	fifo_isEmpty(fifoIndex_t idx);
void	fifo_cleanUp(fifoIndex_t fifo);

#endif /* FIFO_H_ */