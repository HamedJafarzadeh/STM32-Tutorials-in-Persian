/*
 * LCD.h
 *
 *  Created on: Mar 3, 2016
 *      Author: Afshin Alagheband
 *      Afshin.alpha@yahoo.com
 *      R2T.IR
 */

#ifndef APPLICATION_USER_LCD_H_
#define APPLICATION_USER_LCD_H

#include <stdio.h>
#include <math.h>
#include "stm32f1xx_hal.h"


/*--------------------------------------------------------------
 *
 * CONFIGURATION
 *
 --------------------------------------------------------------*/
#define LCD_CONF_BUS							LCD_FUNC_BUS_4BIT
#define LCD_CONF_LINES						    LCD_FUNC_LINES_2
#define LCD_CONF_FONT							LCD_FUNC_FONT_5x8

#define LCD_DISP_LENGTH						16
#define LCD_DISP_ROWS				     	2
#define LCD_CONF_SCROLL_MS				    20

/*------------- LCD Data lines - use the same port for all the lines -------------*/
#define LCD_DATAPORT							GPIOA

#if LCD_CONF_BUS == LCD_FUNC_BUS_8BIT
	#define LCD_DATABIT0							GPIO_PIN_7
	#define LCD_DATABIT1							GPIO_PIN_6
	#define LCD_DATABIT2							GPIO_PIN_5
	#define LCD_DATABIT3							GPIO_PIN_4
#endif /* LCD_CONF_BUS == LCD_FUNC_BUS_8BIT */

#define LCD_DATABIT4							GPIO_PIN_3
#define LCD_DATABIT5							GPIO_PIN_2
#define LCD_DATABIT6							GPIO_PIN_1
#define LCD_DATABIT7							GPIO_PIN_0
/*----------------------------------------------------------------------------------*/


/*------------ LCD Control lines - use the same port for all the lines ------------*/
#define LCD_CONTROLPORT					    	GPIOA
#define LCD_RS_BIT								GPIO_PIN_7
#define LCD_RW_BIT								GPIO_PIN_6
#define LCD_EN_BIT								GPIO_PIN_5
/*----------------------------------------------------------------------------------*/



/*--------------------------------------------------------------
 *
 * CONSTANTS
 *
 --------------------------------------------------------------*/
/*----------------------------------- COMMANDS ----------------------------------- */
#define LCD_CMD_RESET            	0x30     	/*!< Resets display - used in init 3x */
#define LCD_CMD_CLEAR            	0x01     	/*!< Clears display */
#define LCD_CMD_RETURN_HOME      	0x02     	/*!< Sets DDRAM pointer to 0 */
#define LCD_CMD_ENTRY_MODE       	0x04     	/*!< Sets how the pointer is updated after a character write */
#define LCD_CMD_DISPLAY          	0x08     	/*!< Display settings */
#define LCD_CMD_SHIFT            	0x10     	/*!< Cursor and display movement */
#define LCD_CMD_FUNCTION         	0x20     	/*!< Screen type setup */
#define LCD_CMD_CGRAM_ADDR       	0x40     	/*!< Sets CGRAM address */
#define LCD_CMD_DDRAM_ADDR       	0x80     	/*!< Sets DDRAM address */
/*----------------------------------------------------------------------------------*/


/*------------------------- ENTRY_MODE Command parameters --------------------------*/
#define LCD_ENTRY_SHIFT_DISP 			0x01	 		/*!< Shift display */
#define LCD_ENTRY_SHIFT_CURS 			0x00	 		/*!< Shift cursor */
#define LCD_ENTRY_ADDR_INC   			0x02     	/*!< Increments pointer */
#define LCD_ENTRY_ADDR_DEC   			0x00	 		/*!< Decrements pointer */
/*----------------------------------------------------------------------------------*/


/*--------------------------- DISPLAY Command parameters ---------------------------*/
#define LCD_DISP_ON       				0x04      /*!< Enables the display */
#define LCD_DISP_OFF      				0x00      /*!< Disables the display */
#define LCD_DISP_CURS_ON  				0x02      /*!< Enables cursor */
#define LCD_DISP_CURS_OFF 				0x00      /*!< Disables cursor */
#define LCD_DISP_BLINK_ON					0x01      /*!< Enables cursor blinking */
#define LCD_DISP_BLINK_OFF  			0x00      /*!< Disables cursor blinking */
/*----------------------------------------------------------------------------------*/


/*---------------------------- SHIFT Command parameters ----------------------------*/
#define LCD_SHIFT_DISPLAY    			0x08      /*!< Shifts the display or shifts the cursor if not set */
#define LCD_SHIFT_CURSOR    			0x00      /*!< Shifts the display or shifts the cursor if not set */
#define LCD_SHIFT_RIGHT      			0x04      /*!< Shift to the right */
#define LCD_SHIFT_LEFT      			0x00      /*!< Shift to the left  */
/*----------------------------------------------------------------------------------*/

/*--------------------------- FUNCTION Command parameters ---------------------------*/
#define LCD_FUNC_BUS_8BIT  				0x10      /*!< 8 bit bus */
#define LCD_FUNC_BUS_4BIT  				0x00      /*!< 4 bit bus */
#define LCD_FUNC_LINES_2   				0x08      /*!< 2 lines */
#define LCD_FUNC_LINES_1   				0x00      /*!< 1 line */
#define LCD_FUNC_FONT_5x10 				0x04      /*!< 5x10 font */
#define LCD_FUNC_FONT_5x8  				0x00      /*!< 5x8 font */
/*----------------------------------------------------------------------------------*/

/*-------------------------- Busy Flag - actually not used-------------------------- */
#define LCD_BUSY_FLAG        			0x80      /*!< Busy flag */
/*----------------------------------------------------------------------------------*/


/*--------------------------------------------------------------
 *
 * FUNCTIONS
 *
 --------------------------------------------------------------*/
#define LCD_RS_On()		            HAL_GPIO_WritePin(LCD_CONTROLPORT, LCD_RS_BIT,GPIO_PIN_SET)
#define LCD_RS_Off()	           	HAL_GPIO_WritePin(LCD_CONTROLPORT, LCD_RS_BIT, GPIO_PIN_RESET)
#define LCD_RW_On()		            HAL_GPIO_WritePin(LCD_CONTROLPORT, LCD_RW_BIT, GPIO_PIN_SET)
#define LCD_RW_Off()	            HAL_GPIO_WritePin(LCD_CONTROLPORT, LCD_RW_BIT, GPIO_PIN_RESET)
#define LCD_EN_On()		            HAL_GPIO_WritePin(LCD_CONTROLPORT, LCD_EN_BIT, GPIO_PIN_SET)
#define LCD_EN_Off()	            HAL_GPIO_WritePin(LCD_CONTROLPORT, LCD_EN_BIT, GPIO_PIN_RESET)

#define LCD_EN_high_delay()     	HAL_Delay(3)
#define LCD_init_delay()        	HAL_Delay(20)
#define LCD_init_delay2()       	HAL_Delay(4)
#define LCD_init_delay3()       	HAL_Delay(2)
#define LCD_init_end_delay()    	HAL_Delay(3)

#define LCD_clear()                       	  LCD_wr_cmd( LCD_CMD_CLEAR )
#define LCD_home()                        	  LCD_wr_cmd( LCD_CMD_RETURN_HOME )
#define LCD_entry( inc_dec, shift )           LCD_wr_cmd( ( LCD_CMD_ENTRY_MODE | inc_dec | shift ) & 0x07 )
#define LCD_display( on_off, cursor, blink )  LCD_wr_cmd( ( LCD_CMD_DISPLAY | on_off | cursor | blink ) & 0x0F )
#define LCD_shift( inc_dec, shift )           LCD_wr_cmd( ( LCD_CMD_SHIFT | inc_dec | shift ) & 0x1F )
#define LCD_function( bus, lines, font )      LCD_wr_cmd( ( LCD_CMD_FUNCTION | bus | lines | font ) & 0x3F )
#define LCD_cgram_addr( addr )                LCD_wr_cmd( LCD_CMD_CGRAM_ADDR | ( addr & 0x3F ) )
#define LCD_ddram_addr( addr )                LCD_wr_cmd( LCD_CMD_DDRAM_ADDR | ( addr & 0x7F ) )
#define LCD_write_char( c )                   LCD_wr_data( c & 0xff )

void LCD_wr_hi_nibble(unsigned char data);
void LCD_wr_lo_nibble(unsigned char data);
void LCD_write(unsigned char data);
void LCD_wr_cmd(unsigned char cmd);
void LCD_wr_data(unsigned char data);

void LCD_Init(void);
void LCD_PutChar(unsigned char c);
void LCD_GotoXY(unsigned char x, unsigned char y);
void LCD_PutStr(char *str);
void LCD_ClrScr(void);







#endif /* APPLICATION_USER_LCD_H_ */
