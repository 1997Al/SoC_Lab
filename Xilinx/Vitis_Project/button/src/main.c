/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"
#include <stdlib.h>
#include <inttypes.h>

#define N 1000000
#define MAX 65535

int main()
{
    init_platform();

    XGpio A, B, Out_0, Out_1, RDY, C_0, C_1, BUTTONS;
    uint32_t a, b, out_0, out_1, rdy, c_0, c_1;

    //init
    XGpio_Initialize(&A, XPAR_AXI_GPIO_A_DEVICE_ID);
    XGpio_Initialize(&B, XPAR_AXI_GPIO_B_DEVICE_ID);
    XGpio_Initialize(&Out_0, XPAR_AXI_GPIO_OUT_0_DEVICE_ID);
    XGpio_Initialize(&Out_1, XPAR_AXI_GPIO_OUT_1_DEVICE_ID);
    XGpio_Initialize(&C_0, XPAR_AXI_GPIO_C_0_DEVICE_ID);
    XGpio_Initialize(&C_1, XPAR_AXI_GPIO_C_1_DEVICE_ID);
    XGpio_Initialize(&RDY, XPAR_AXI_GPIO_RDY_DEVICE_ID);
    XGpio_Initialize(&BUTTONS, XPAR_AXI_GPIO_BTN_DEVICE_ID);

    XGpio_SetDataDirection(&A, 1, 0x0);
    XGpio_SetDataDirection(&B, 1, 0x0);
    XGpio_SetDataDirection(&Out_0, 1, 0xf);
    XGpio_SetDataDirection(&Out_1, 1, 0xf);
    XGpio_SetDataDirection(&C_0, 1, 1);
    XGpio_SetDataDirection(&C_1, 1, 1);
    XGpio_SetDataDirection(&RDY, 1, 1);
    XGpio_SetDataDirection(&BUTTONS, 1, 0xf);

    uint8_t gen_data = 0;

    uint32_t count = N;
    uint32_t err_0 = 0;
    uint32_t err_1 = 0;
    uint32_t exact = 0;
    uint64_t AE0 = 0;
    uint64_t AE1 = 0;
    a=0;
    b=0;

    while(1){

    	while(!XGpio_DiscreteRead(&BUTTONS, 1) && !gen_data);

    	gen_data = 1;
    	count = N;
    	err_0 = 0;
    	err_1 = 0;
    	exact = 0;
    	AE0 = 0;
    	AE1 = 0;

    	//generate datapoints

		//printf("START\n");
		//printf("generating datapoints using %i calculations\n", N);

		while(count > 1){

			XGpio_DiscreteWrite(&A, 1, a);
			XGpio_DiscreteWrite(&B, 1, b);

			out_0=XGpio_DiscreteRead(&Out_0, 1);
			out_1=XGpio_DiscreteRead(&Out_1, 1);
			c_0=XGpio_DiscreteRead(&C_0, 1);
			c_1=XGpio_DiscreteRead(&C_1, 1);
			out_0 += c_0*(MAX+1);
			out_1 += c_1*(MAX+1);
			rdy=XGpio_DiscreteRead(&RDY, 1);


			if(rdy == 0){
				exact = a+b;
				a=rand()%(MAX+1);
				b=rand()%(MAX+1);

				rdy = 1;

				if(out_0 != exact){
					err_0++;
					AE0 += abs(exact - out_0);
				}

				if(out_1 != exact){
					err_1++;
					AE1 += abs(exact - out_1);
				}

				//if(((int)count%(N/10)) == 0){
				//	printf("%li/%i\n", N-count, N);
				//}

				count--;
			}
		}

		//printf("DONE generating datapoints\n");
		printf("ER0=%.4lf, AE0=%.4lf, ER1=%.4lf, AE1=%.4lf\n", (double)err_0/N, (double)AE0/N, (double)err_1/N, (double)AE1/N);
		gen_data = 0;


    }


    cleanup_platform();
    return 0;
}
