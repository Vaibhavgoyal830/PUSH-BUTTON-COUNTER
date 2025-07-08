int buttonPin = 2;       // Push button pin
int counter = 0;         // Counter variable
bool lastState = LOW;    // Previous button state
bool currentState;

void setup() {
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);    // Start serial communication
}

void loop() {
  currentState = digitalRead(buttonPin);

  // Detect rising edge (button press)
  if (currentState == HIGH && lastState == LOW) {
    counter++;
    Serial.print("Count: ");
    Serial.println(counter);
    delay(200);  // Simple debounce delay
  }

  lastState = currentState;
}
