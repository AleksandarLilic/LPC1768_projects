/*----------------------------------------------------------------------------
 * Name:      Thread1.c
 * Purpose: 	CMSIS-RTOS test program v1.5
 * Designer: 	Aleksandar
 *----------------------------------------------------------------------------*/

// CMSIS RTOS header file
#include "cmsis_os2.h"
#include "LPC17xx.h"

/*----------------------------------------------------------------------------
 *      Thread 1 'LED_one': Sample thread
 *---------------------------------------------------------------------------*/
 
// Thread function declaration
void Thread1 (void *argument);
// Thread id, used for interaction with a thread
osThreadId_t tid_Thread1;
// Thread status
osStatus_t T1_status;

// Externally defined delay function
extern int delay(int);

// Priority implementation:
const osThreadAttr_t Thread1_attr = {
		.priority = osPriorityNormal3 // Set initial priority to Normal + 3
	};

// Thread initialization function definition:
int Init_Thread1 (void) {

  // Creation of a new thread with Thread ID as a return value if successful:
	tid_Thread1 = osThreadNew (Thread1, NULL, &Thread1_attr);
  if (!tid_Thread1) return(-1);
  return(0);
}

// Thread definition:
__NO_RETURN void Thread1 (void *argument) {
	
  while (1) {
    
		uint32_t port = LPC_GPIO1->FIOPIN; // Take current state of a port
		LPC_GPIO1->FIOPIN = 0x00040000; // Set LED1
		
		LPC_GPIO0->FIOCLR0 = 0x1;		//Bar1.0 pin0.0
		delay(250); 			// Delay, calculated (simulated workload), in ms
		LPC_GPIO0->FIOCLR0 = 0x2;		//Bar1.1 pin0.1
		delay(250);
		LPC_GPIO0->FIOCLR0 = 0x10;	//Bar1.2 pin0.4
		delay(250);
		LPC_GPIO0->FIOCLR0 = 0x20;	//Bar1.3 pin0.5
		delay(250);
		LPC_GPIO0->FIOSET0 = 0x33;	//Bar1 clear all pins (0,1,4,5)
		
		LPC_GPIO1->FIOPIN = port; 	// Revert to previous state
		osDelay(3000); 		// OsDelay in ms
		
    //osThreadYield ();// suspend thread
  }
}
