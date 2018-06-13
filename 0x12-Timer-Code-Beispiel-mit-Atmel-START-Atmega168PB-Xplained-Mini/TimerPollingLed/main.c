#include <atmel_start.h>
#include <util/delay.h>


void LED_task(void);
void DoOtherStuff_task(void);
void delay_ms(uint8_t count);

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	while (1) {
		LED_task();
		DoOtherStuff_task();
	}
}

void LED_task(void){
	if (TCNT1 >= 10000) {	// check if 10 ms are elapsed
		TCNT1 = 0;			// reset timer
		LED_toggle_level();	// toggle LED
	}
}


// task duration is between 1 ms and 3 ms
void DoOtherStuff_task(void) {
	static uint8_t randomNumber = 0;
	randomNumber++;
	delay_ms(1 + (randomNumber % 3));
}

// delay function
void delay_ms(uint8_t count) {
	while(count--) {
		_delay_ms(1);
	}
}