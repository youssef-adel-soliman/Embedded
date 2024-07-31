#line 1 "C:/Users/Mr. Adel Soliman/Desktop/Embedded Project/Code[Software]/New Traffic TTT(try3).c"
char counter1 =0;
char counter2 =0;
void main(){
 adcon1 = 0x07;
 trisE = 0b000;
 trisB = 0b00000000;
 trisD = 0b00000000;
 trisA.b4 =1;
 trisA.B5=1;
 trisC = 0b11111111;portC = 0b11111111;
 portE.b0 =0;portE.b1=0;portE.b2=1;
 portD.b0 =1;portD.b1=0;portD.b2=0;
 for(;;){
 portB.b0 = counter1.b0;portB.b1 = counter1.b1;portB.b2 = counter1.b2;portB.b3 = counter1.b3;
 portB.b4 = counter2.b0;portB.b5 = counter2.b1;portB.b6 = counter2.b2;portB.b7 = counter2.b3;
 counter1++;
 delay_ms(1000);
 if(counter1==10){
 counter2++;
 if(counter2==10) counter2=0;
 counter1=0;}
 if(portA.b4==1){
 if(portA.b5==1){
 portD.b0=0;portE.b0=0;
 portD.b1=1;portE.b1=1;
 portD.b2=0;portE.b2=0;
 counter1=0;counter2=0;
 }}
 if(portA.b4==0){
 if(counter1==1&&counter2==2&&portE.b1==0&&portE.b2==1){
 portE.b2=0;
 portE.b1=1;
 if(portE.b0==1) portE.b0=0;
 }
 if(counter1==4&&counter2==2&&portD.b1==0&&portD.b0==1){
 portD.b0=0;
 portD.b1=1;
 if(portD.b2==1) portD.b2=0;
 counter1=0;counter2=0;
 }
 if(counter1==4&&counter2==0&&portE.B0==0&&portE.B1==1){
 portE.b1=0;
 portE.b0=1;
 if(portE.B2==1) portE.b2=0;
 counter1=0;counter2=0;
 }
 if(counter1==4&&counter2==0&&portD.B2==0&&portD.B1==1){
 portD.b1=0;
 portD.b2=1;
 if(portD.B0==1) portD.b0=0;
 counter1=0;counter2=0;
 }
 if(counter1==3&&counter2==1&&portD.b0==0&&portD.b2==1){
 portD.b0=1;
 portD.b2=0;
 if(portD.b1==1) portD.b1=0;
 }
 if(counter1==6&&counter2==1&&portE.b2==0&&portE.b0==1){
 portE.b0=0;
 portE.b2=1;
 if(portE.b1==1) portE.b1=0;
 counter1=0;counter2=0;
 }
 }
 }
 }
