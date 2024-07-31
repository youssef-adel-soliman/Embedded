
_main:

;New Traffic TTT(try3).c,3 :: 		void main(){
;New Traffic TTT(try3).c,4 :: 		adcon1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;New Traffic TTT(try3).c,5 :: 		trisE = 0b000;
	CLRF       TRISE+0
;New Traffic TTT(try3).c,6 :: 		trisB = 0b00000000;
	CLRF       TRISB+0
;New Traffic TTT(try3).c,7 :: 		trisD = 0b00000000;
	CLRF       TRISD+0
;New Traffic TTT(try3).c,8 :: 		trisA.b4 =1;
	BSF        TRISA+0, 4
;New Traffic TTT(try3).c,9 :: 		trisA.B5=1;
	BSF        TRISA+0, 5
;New Traffic TTT(try3).c,10 :: 		trisC = 0b11111111;portC = 0b11111111;
	MOVLW      255
	MOVWF      TRISC+0
	MOVLW      255
	MOVWF      PORTC+0
;New Traffic TTT(try3).c,11 :: 		portE.b0 =0;portE.b1=0;portE.b2=1;
	BCF        PORTE+0, 0
	BCF        PORTE+0, 1
	BSF        PORTE+0, 2
;New Traffic TTT(try3).c,12 :: 		portD.b0 =1;portD.b1=0;portD.b2=0;
	BSF        PORTD+0, 0
	BCF        PORTD+0, 1
	BCF        PORTD+0, 2
;New Traffic TTT(try3).c,13 :: 		for(;;){
L_main0:
;New Traffic TTT(try3).c,14 :: 		portB.b0 = counter1.b0;portB.b1 = counter1.b1;portB.b2 = counter1.b2;portB.b3 = counter1.b3;
	BTFSC      _counter1+0, 0
	GOTO       L__main40
	BCF        PORTB+0, 0
	GOTO       L__main41
L__main40:
	BSF        PORTB+0, 0
L__main41:
	BTFSC      _counter1+0, 1
	GOTO       L__main42
	BCF        PORTB+0, 1
	GOTO       L__main43
L__main42:
	BSF        PORTB+0, 1
L__main43:
	BTFSC      _counter1+0, 2
	GOTO       L__main44
	BCF        PORTB+0, 2
	GOTO       L__main45
L__main44:
	BSF        PORTB+0, 2
L__main45:
	BTFSC      _counter1+0, 3
	GOTO       L__main46
	BCF        PORTB+0, 3
	GOTO       L__main47
L__main46:
	BSF        PORTB+0, 3
L__main47:
;New Traffic TTT(try3).c,15 :: 		portB.b4 = counter2.b0;portB.b5 = counter2.b1;portB.b6 = counter2.b2;portB.b7 = counter2.b3;
	BTFSC      _counter2+0, 0
	GOTO       L__main48
	BCF        PORTB+0, 4
	GOTO       L__main49
L__main48:
	BSF        PORTB+0, 4
L__main49:
	BTFSC      _counter2+0, 1
	GOTO       L__main50
	BCF        PORTB+0, 5
	GOTO       L__main51
L__main50:
	BSF        PORTB+0, 5
L__main51:
	BTFSC      _counter2+0, 2
	GOTO       L__main52
	BCF        PORTB+0, 6
	GOTO       L__main53
L__main52:
	BSF        PORTB+0, 6
L__main53:
	BTFSC      _counter2+0, 3
	GOTO       L__main54
	BCF        PORTB+0, 7
	GOTO       L__main55
L__main54:
	BSF        PORTB+0, 7
L__main55:
;New Traffic TTT(try3).c,16 :: 		counter1++;
	INCF       _counter1+0, 1
;New Traffic TTT(try3).c,17 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;New Traffic TTT(try3).c,18 :: 		if(counter1==10){
	MOVF       _counter1+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;New Traffic TTT(try3).c,19 :: 		counter2++;
	INCF       _counter2+0, 1
;New Traffic TTT(try3).c,20 :: 		if(counter2==10) counter2=0;
	MOVF       _counter2+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	CLRF       _counter2+0
L_main5:
;New Traffic TTT(try3).c,21 :: 		counter1=0;}
	CLRF       _counter1+0
L_main4:
;New Traffic TTT(try3).c,22 :: 		if(portA.b4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_main6
;New Traffic TTT(try3).c,23 :: 		if(portA.b5==1){
	BTFSS      PORTA+0, 5
	GOTO       L_main7
;New Traffic TTT(try3).c,24 :: 		portD.b0=0;portE.b0=0;
	BCF        PORTD+0, 0
	BCF        PORTE+0, 0
;New Traffic TTT(try3).c,25 :: 		portD.b1=1;portE.b1=1;
	BSF        PORTD+0, 1
	BSF        PORTE+0, 1
;New Traffic TTT(try3).c,26 :: 		portD.b2=0;portE.b2=0;
	BCF        PORTD+0, 2
	BCF        PORTE+0, 2
;New Traffic TTT(try3).c,27 :: 		counter1=0;counter2=0;
	CLRF       _counter1+0
	CLRF       _counter2+0
;New Traffic TTT(try3).c,28 :: 		}}
L_main7:
L_main6:
;New Traffic TTT(try3).c,29 :: 		if(portA.b4==0){
	BTFSC      PORTA+0, 4
	GOTO       L_main8
;New Traffic TTT(try3).c,30 :: 		if(counter1==1&&counter2==2&&portE.b1==0&&portE.b2==1){
	MOVF       _counter1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	MOVF       _counter2+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	BTFSC      PORTE+0, 1
	GOTO       L_main11
	BTFSS      PORTE+0, 2
	GOTO       L_main11
L__main38:
;New Traffic TTT(try3).c,31 :: 		portE.b2=0;
	BCF        PORTE+0, 2
;New Traffic TTT(try3).c,32 :: 		portE.b1=1;
	BSF        PORTE+0, 1
;New Traffic TTT(try3).c,33 :: 		if(portE.b0==1) portE.b0=0;
	BTFSS      PORTE+0, 0
	GOTO       L_main12
	BCF        PORTE+0, 0
L_main12:
;New Traffic TTT(try3).c,34 :: 		}
L_main11:
;New Traffic TTT(try3).c,35 :: 		if(counter1==4&&counter2==2&&portD.b1==0&&portD.b0==1){
	MOVF       _counter1+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main15
	MOVF       _counter2+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main15
	BTFSC      PORTD+0, 1
	GOTO       L_main15
	BTFSS      PORTD+0, 0
	GOTO       L_main15
L__main37:
;New Traffic TTT(try3).c,36 :: 		portD.b0=0;
	BCF        PORTD+0, 0
;New Traffic TTT(try3).c,37 :: 		portD.b1=1;
	BSF        PORTD+0, 1
;New Traffic TTT(try3).c,38 :: 		if(portD.b2==1) portD.b2=0;
	BTFSS      PORTD+0, 2
	GOTO       L_main16
	BCF        PORTD+0, 2
L_main16:
;New Traffic TTT(try3).c,39 :: 		counter1=0;counter2=0;
	CLRF       _counter1+0
	CLRF       _counter2+0
;New Traffic TTT(try3).c,40 :: 		}
L_main15:
;New Traffic TTT(try3).c,41 :: 		if(counter1==4&&counter2==0&&portE.B0==0&&portE.B1==1){
	MOVF       _counter1+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main19
	MOVF       _counter2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main19
	BTFSC      PORTE+0, 0
	GOTO       L_main19
	BTFSS      PORTE+0, 1
	GOTO       L_main19
L__main36:
;New Traffic TTT(try3).c,42 :: 		portE.b1=0;
	BCF        PORTE+0, 1
;New Traffic TTT(try3).c,43 :: 		portE.b0=1;
	BSF        PORTE+0, 0
;New Traffic TTT(try3).c,44 :: 		if(portE.B2==1) portE.b2=0;
	BTFSS      PORTE+0, 2
	GOTO       L_main20
	BCF        PORTE+0, 2
L_main20:
;New Traffic TTT(try3).c,45 :: 		counter1=0;counter2=0;
	CLRF       _counter1+0
	CLRF       _counter2+0
;New Traffic TTT(try3).c,46 :: 		}
L_main19:
;New Traffic TTT(try3).c,47 :: 		if(counter1==4&&counter2==0&&portD.B2==0&&portD.B1==1){
	MOVF       _counter1+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	MOVF       _counter2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	BTFSC      PORTD+0, 2
	GOTO       L_main23
	BTFSS      PORTD+0, 1
	GOTO       L_main23
L__main35:
;New Traffic TTT(try3).c,48 :: 		portD.b1=0;
	BCF        PORTD+0, 1
;New Traffic TTT(try3).c,49 :: 		portD.b2=1;
	BSF        PORTD+0, 2
;New Traffic TTT(try3).c,50 :: 		if(portD.B0==1) portD.b0=0;
	BTFSS      PORTD+0, 0
	GOTO       L_main24
	BCF        PORTD+0, 0
L_main24:
;New Traffic TTT(try3).c,51 :: 		counter1=0;counter2=0;
	CLRF       _counter1+0
	CLRF       _counter2+0
;New Traffic TTT(try3).c,52 :: 		}
L_main23:
;New Traffic TTT(try3).c,53 :: 		if(counter1==3&&counter2==1&&portD.b0==0&&portD.b2==1){
	MOVF       _counter1+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main27
	MOVF       _counter2+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main27
	BTFSC      PORTD+0, 0
	GOTO       L_main27
	BTFSS      PORTD+0, 2
	GOTO       L_main27
L__main34:
;New Traffic TTT(try3).c,54 :: 		portD.b0=1;
	BSF        PORTD+0, 0
;New Traffic TTT(try3).c,55 :: 		portD.b2=0;
	BCF        PORTD+0, 2
;New Traffic TTT(try3).c,56 :: 		if(portD.b1==1) portD.b1=0;
	BTFSS      PORTD+0, 1
	GOTO       L_main28
	BCF        PORTD+0, 1
L_main28:
;New Traffic TTT(try3).c,57 :: 		}
L_main27:
;New Traffic TTT(try3).c,58 :: 		if(counter1==6&&counter2==1&&portE.b2==0&&portE.b0==1){
	MOVF       _counter1+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main31
	MOVF       _counter2+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main31
	BTFSC      PORTE+0, 2
	GOTO       L_main31
	BTFSS      PORTE+0, 0
	GOTO       L_main31
L__main33:
;New Traffic TTT(try3).c,59 :: 		portE.b0=0;
	BCF        PORTE+0, 0
;New Traffic TTT(try3).c,60 :: 		portE.b2=1;
	BSF        PORTE+0, 2
;New Traffic TTT(try3).c,61 :: 		if(portE.b1==1) portE.b1=0;
	BTFSS      PORTE+0, 1
	GOTO       L_main32
	BCF        PORTE+0, 1
L_main32:
;New Traffic TTT(try3).c,62 :: 		counter1=0;counter2=0;
	CLRF       _counter1+0
	CLRF       _counter2+0
;New Traffic TTT(try3).c,63 :: 		}
L_main31:
;New Traffic TTT(try3).c,64 :: 		}
L_main8:
;New Traffic TTT(try3).c,65 :: 		}
	GOTO       L_main0
;New Traffic TTT(try3).c,66 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
