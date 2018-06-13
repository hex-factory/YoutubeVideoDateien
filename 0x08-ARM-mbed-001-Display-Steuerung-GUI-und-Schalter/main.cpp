#include "mbed.h"
#include "F746_GUI.hpp"
#include "flash.h"

/************************************
 local variables / objects 
 ************************************/
static DigitalOut light1Fet1(D4, 0);
static DigitalOut light1Fet2(D5, 0);
static DigitalOut light2Fet1(D6, 0);
static DigitalOut light2Fet2(D7, 0);
static uint8_t flashData[FLASH_DATA_SIZE];

/************************************
 local function declaration 
 ************************************/
 
static void _switchButton(DigitalOut out1, DigitalOut out2, uint8_t *toggleByte);

/************************************
 local function definition 
 ************************************/
 
static void _switchButton(DigitalOut out1, DigitalOut out2, uint8_t *toggleByte) {
    /* toggle byte invertieren */
    *toggleByte = !(*toggleByte);
    /* schreibe Daten ins Flash. Stellt Datenkonsistenz zwischen RAM und ROM sicher. */
    flash_write(flashData); 
    
    /* Je nach Stellung des toggle Bytes,
       wird Ausgang 1 oder 2 kurzzeitig geschaltet (Spannung angelegt). */
    if(*toggleByte){
        out1 = 1;
        wait(0.5);
        out1 = 0;
    } else{
        out2 = 1;
        wait(0.5);
        out2 = 0;
    }  
}

/************************************
 global function definition
 ************************************/
 
int main() {    
    /***************************
     init 
     ***************************/
    /* GUI Ojects */
    Label label1(240, 2, "Display Steuerung v0.1", Label::CENTER, Font16);
    Button btnLight1(10, 40, 70, 40, "Lampe 1");
    Button btnLight2(90, 40, 70, 40, "Lampe 2");
    
    /* flash */
    flash_init();    
    flash_read(flashData); /* Lese Daten von flash (ROM) in das RAM */
    
    /***************************
     main loop 
     ***************************/
    while(1) {
        /* prüft ob button "btnLight1" gerade gedrück ist */  
        if (btnLight1.Touched()){
            _switchButton(light1Fet1, light1Fet2, flashData + FLASH_TOGGLE_BYTE_LIGHT1);
            btnLight1.Draw();
        }
        /* prüft ob button "btnLight2" gerade gedrück ist */  
        if (btnLight2.Touched()){
            _switchButton(light2Fet1, light2Fet2, flashData + FLASH_TOGGLE_BYTE_LIGHT2);
            btnLight2.Draw();
        }
    }
}