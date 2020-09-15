import java.awt.*;
import processing.serial.*; //importing serial library

float inByte; //to store incomming value from serial port
float reading=0; //to store mapped inByte value
float newPosition;
float oldPosition;
Serial arduino; //naming our serial port as "arduino"
Robot ctrl;
void setup() //only runs one time when program starts
{
  surface.setVisible(false);
  frame.removeNotify();
  try {
    ctrl = new Robot();
  }
  catch (Exception e)
  {
    exit();
  }

  //printArray(Serial.list()); //listing serial port to find the port in which arduino is connected
  arduino = new Serial(this, Serial.list()[0], 9600); //initializing port, in my case arduino is no.4 in the list
}
void draw() //this will loop by 60 frame per second by default , frame rate can be changed by frameRate() function
{

  if (arduino.available()>0) //checking whether there is incomming serial values
  {
    inByte = arduino.read(); //storing incomming values to variable inByte
  }else{
    reading = 0; //if no values are comming from our port reading will be zero
  }

  //println("inByte",inByte);//printing inByte value , only for debuging purpose, we can command this line
  newPosition = inByte;
  //println("newPosition",newPosition);
  if(newPosition != oldPosition && (newPosition % 2) == 0){
    if(newPosition > oldPosition){
        //volume++;
        up();
        oldPosition = newPosition;
    }else{
        //volume--;
        down();
        oldPosition = newPosition;
    }

  }

}
//function for the volume up
void up(){
  ctrl.keyPress(17);
  ctrl.keyPress(38);
  ctrl.keyRelease(17);
  ctrl.keyRelease(38);
}
//function for the volume down
void down(){
  ctrl.keyPress(17);
  ctrl.keyPress(40);
  ctrl.keyRelease(17);
  ctrl.keyRelease(40);
}
//function for the space button
void space(){
  ctrl.keypress(32);
  ctrl.keyRelease(32);
}
