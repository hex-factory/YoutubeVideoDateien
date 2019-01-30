/*
 * Fifo.c
 *
 * Created: 12.08.2018 12:24:44
 *  Author: kurjon
 */ 
#include "fifo.h"
#include <atmel_start.h>

#define BLEN (16)
#define BMSK (BLEN-1)

typedef struct {
	volatile unsigned char w;
	volatile unsigned char r;
	unsigned char d[BLEN];  // die Daten sind nicht volatil, sie können sich
} fifo_t;                 // nur geändert haben, wenn der Index sich ändert

fifo_t fifo[NUMBER_OF_FIFOS];


void fifo_write(fifoIndex_t idx, uint8_t din){	
	// Fifo schreiben
	if (((fifo[idx].w - fifo[idx].r) & BMSK) == BMSK) {
		// Fehlerbehandlung: Fifo ist voll
		LED_set_level(true);
	}
	else {
		// Zeichen eintragen
		fifo[idx].d[fifo[idx].w & BMSK] = din;
		fifo[idx].w++;
	}
}

uint8_t fifo_read(fifoIndex_t idx){
	uint8_t dout = 0xFF;
	
	// Fifo lesen
	if (fifo[idx].w != fifo[idx].r) { // Fifo belegt?
		// Zeichen auslesen
		dout = fifo[idx].d[fifo[idx].r&BMSK];
		fifo[idx].r++;
	}
	
	return dout;
}

bool fifo_isEmpty(fifoIndex_t idx){	
	
	if (fifo[idx].w != fifo[idx].r) { // Fifo belegt?
		return false;
	}
	
	return true;
}

void fifo_cleanUp(fifoIndex_t idx){
	fifo[idx].w = fifo[idx].r;
}
