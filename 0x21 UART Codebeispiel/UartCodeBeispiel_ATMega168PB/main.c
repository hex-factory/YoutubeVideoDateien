#include <atmel_start.h>
#include "usart.h"
#include "fifo.h"

void writeData(uint8_t din){
	fifo_write(FIFO_UART_TX, din);
	USART_0_ENABLE_UDRE_ISR;
}

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	LED_set_level(false);

	writeData('h');
	writeData('e');
	writeData('l');
	writeData('l');
	writeData('o');
	
	/* Replace with your application code */
	while (1) {
		if(!fifo_isEmpty(FIFO_UART_RX))
		{
			writeData(' ');
			writeData('r');
			writeData(':');
			writeData(fifo_read(FIFO_UART_RX));
			writeData(' ');
			
		}
	}
}
