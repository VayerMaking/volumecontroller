#define outputA 0
#define outputB 4

int counter = 0;
int aState;
int aLastState;
int pot;
void setup() {
  pinMode(outputA,INPUT);
  pinMode(outputB,INPUT);


  Serial.begin (9600);
  // Reads the initial state of the outputA
  aLastState = digitalRead(outputA);
}
void loop() {
  aState = digitalRead(outputA); // Reads the "current" state of the outputA
  // If the previous and the current state of the outputA are different, that means a Pulse has occured
  if (aState != aLastState){
    // If the outputB state is different to the outputA state, that means the encoder is rotating clockwise
    if (digitalRead(outputB) != aState) {
      counter ++;
    } else {
      counter --;
    }
    pot = counter;
    Serial.write(pot);

  }
  aLastState = aState; // Updates the previous state of the outputA with the current state
}
