#ifndef FLASH_H
#define FLASH_H

#include "mbed.h"

/* global defines */
#define FLASH_DATA_SIZE             2
/*
    BYTE 0 => TOGGLE_BYTE_LIGHT0
    BYTE 1 => TOGGLE_BYTE_LIGHT1
*/
#define FLASH_TOGGLE_BYTE_LIGHT1    0
#define FLASH_TOGGLE_BYTE_LIGHT2    1

/* global function declaration */
void flash_init(void);
void flash_write(uint8_t* newFlashData);
void flash_read(uint8_t* readFlashData);

#endif