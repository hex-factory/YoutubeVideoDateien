
#include "flash.h"
#include "stm32746g_discovery_qspi.h"

#define FLASH_START_ADDRESS 0
#define FLASH_START_BLOCK   0

void flash_init(void)
{
    BSP_QSPI_Init(); 
}

void flash_write(uint8_t* newFlashData)
{   
    BSP_QSPI_Erase_Block(FLASH_START_BLOCK); 
    BSP_QSPI_Write(newFlashData, FLASH_START_ADDRESS, FLASH_DATA_SIZE);   
}

void flash_read(uint8_t* readFlashData)
{    
    BSP_QSPI_Read(readFlashData, FLASH_START_ADDRESS, FLASH_DATA_SIZE);
}