/*
 * LCD.c
 *
 *  Created on: Mar 3, 2016
 *      Author: Afshin Alagheband
 *      Afshin.alpha@yahoo.com
 *      R2T.IR
 */

#include "LCD.h"


/* Function used from the CooCox LCD library */
/********************************************************************************************/
void LCD_wr_hi_nibble( unsigned char data )
{
	if ( data & 0x10 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT4,GPIO_PIN_SET );
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT4,GPIO_PIN_RESET );
	}
	if ( data & 0x20 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT5,GPIO_PIN_SET );
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT5,GPIO_PIN_RESET);
	}
	if ( data & 0x40 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT6,GPIO_PIN_SET );
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT6 ,GPIO_PIN_RESET);
	}
	if ( data & 0x80 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT7,GPIO_PIN_SET );
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT7,GPIO_PIN_RESET );
	}

    /* set the EN signal */
    LCD_EN_On();

    /* wait */
    LCD_EN_high_delay();

    /* reset the EN signal */
    LCD_EN_Off();
}


#if LCD_CONF_BUS == LCD_FUNC_BUS_4BIT

void LCD_wr_lo_nibble( unsigned char data )
{
	if ( data & 0x01 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT4 ,GPIO_PIN_SET);
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT4,GPIO_PIN_RESET );
	}
	if ( data & 0x02 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT5 ,GPIO_PIN_SET);
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT5,GPIO_PIN_RESET );
	}
	if ( data & 0x04 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT6 ,GPIO_PIN_SET);
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT6 ,GPIO_PIN_RESET);
	}
	if ( data & 0x08 ) {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT7 ,GPIO_PIN_SET);
	} else {
		HAL_GPIO_WritePin( LCD_DATAPORT, LCD_DATABIT7,GPIO_PIN_RESET);
	}

    /* set the EN signal */
    LCD_EN_On();

    /* wait */
    LCD_EN_high_delay();

    /* reset the EN signal */
    LCD_EN_Off();
}

/* 4bit bus version */
void LCD_write( unsigned char data )
{
	/* send the data bits - high nibble first */
	LCD_wr_hi_nibble( data );
	LCD_wr_lo_nibble( data );
}
#endif /* LCD_CONF_BUS == LCD_FUNC_BUS_4BIT */


#if LCD_CONF_BUS == LCD_FUNC_BUS_8BIT

/* 8bit bus version */
void LCD_write( unsigned char data )
{
	/* set the data bits */
	if ( data & 0x01 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT0 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT0 );
	}
	if ( data & 0x02 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT1 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT1 );
	}
	if ( data & 0x04 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT2 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT2 );
	}
	if ( data & 0x08 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT3 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT3 );
	}
	if ( data & 0x10 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT4 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT4 );
	}
	if ( data & 0x20 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT5 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT5 );
	}
	if ( data & 0x40 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT6 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT6 );
	}
	if ( data & 0x80 ) {
		GPIO_SetBits( LCD_DATAPORT, LCD_DATABIT7 );
	} else {
		GPIO_ResetBits( LCD_DATAPORT, LCD_DATABIT7 );
	}

    /* tell the lcd that we have a command to read in */
    LCD_EN_On();

    /* wait long enough so that the lcd can see the command */
    LCD_EN_high_delay();

    /* reset the ce line */
    LCD_EN_Off();
    LCD_init_end_delay();

}
#endif /* LCD_CONF_BUS == LCD_FUNC_BUS_8BIT */


void LCD_wr_cmd( unsigned char cmd )
{
	LCD_RS_Off();
	LCD_write( cmd );
}


void LCD_wr_data( unsigned char data )
{
	LCD_RS_On();
	LCD_write( data );
}
/********************************************************************************************/



/*********************************************************************************************
Function name	    : LCD_Init
Description			: Initializes the LCD lcd module
Special Note(s) 	: NONE
Parameters			: NONE
Return value		: NONE
*********************************************************************************************/

void LCD_Init(void)
{

  /* clear control bits */
	LCD_EN_Off();
	LCD_RS_Off();
	LCD_RW_Off();

	/* wait initial delay for LCD to settle */
  /* reset procedure - 3 function calls resets the device */
  LCD_init_delay();
  LCD_wr_hi_nibble( LCD_CMD_RESET );
  LCD_init_delay2();
  LCD_wr_hi_nibble( LCD_CMD_RESET );
  LCD_init_delay3();
  LCD_wr_hi_nibble( LCD_CMD_RESET );

	#if LCD_CONF_BUS == LCD_FUNC_BUS_4BIT
    /* 4bit interface */
  LCD_wr_hi_nibble( LCD_CMD_FUNCTION );
  #endif /* LCD_CONF_BUS == LCD_FUNC_BUS_4BIT */

  /* sets the configured values - can be set again only after reset */
  LCD_function( LCD_CONF_BUS, LCD_CONF_LINES, LCD_CONF_FONT );

  /* turn the display on with no cursor or blinking */
	LCD_display( LCD_DISP_ON, LCD_DISP_CURS_OFF, LCD_DISP_BLINK_OFF );

  /* clear the display */
  LCD_clear();

  /* addr increment, shift cursor */
	LCD_entry( LCD_ENTRY_ADDR_INC, LCD_ENTRY_SHIFT_CURS );

}



/*********************************************************************************************
Function name	    : LCD_PutChar
Description			: Prints a character at the current character cursor position
Special Note(s) 	: NONE
Parameters			: c				-	character to print
Return value		: NONE
*********************************************************************************************/
void LCD_PutChar(unsigned char c)
{
	LCD_wr_data(c & 0xff);
}

/*********************************************************************************************
Function name   	: LCD_GotoXY
Description			: Changes the position of the current character cursor from where the next
					  characters will be printed.
Special Note(s) 	: NONE
Parameters			: x				-	column position (0 - LCD_DISP_LENGTH-1)
					  y				-	row position 	(0 - LCD_DISP_ROWS-1)
Return value		: NONE
*********************************************************************************************/
void LCD_GotoXY(unsigned char x, unsigned char y)
{
  unsigned char copy_y=0;

  if(x > (LCD_DISP_LENGTH-1))
		x = 0;

	if(y > (LCD_DISP_ROWS-1))
		y = 0;

	switch(y)
  {
		case 0:  copy_y = 0x80; break;
		case 1:  copy_y = 0xc0; break;
		case 2:  copy_y = 0x94; break;
		case 3:  copy_y = 0xd4; break;
  }
	LCD_wr_cmd(x + copy_y);
}



/*********************************************************************************************
Function name  		: LCD_PutStr
Description			: Prints a string at the current character cursor position.
Special Note(s) 	: NONE
Parameters			: str			-	string (char array) to print
Return value		: NONE
*********************************************************************************************/
void LCD_PutStr(char *str)
{
	__IO unsigned int i=0;

	do
	{
		LCD_PutChar(str[i]);
		i++;
	}while(str[i]!='\0');
}


/*********************************************************************************************
Function name   	: LCD_ClrScr
Description			: Clears the display
Special Note(s) 	: NONE
Parameters			: NONE
Return value		: NONE
*********************************************************************************************/
void LCD_ClrScr(void)
{
	LCD_wr_cmd(LCD_CMD_CLEAR);
}


