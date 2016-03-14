5String aux;
int led1 = 2;
int led2 = 4;
int led3 = 7;
int led_pwm1 = 3;
int led_pwm2 = 5;
int led_pwm3 = 6;
int led_range1 = 9;
int led_range2 = 10;
int led_range3 = 11;
int valueA0;
int valueA1;
int valueA2;
int btn1 = 8;
int btn2 = 12;
int btn3 = 13;
int ans;


 
void setup(){
  Serial.begin(9600);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led_pwm1, OUTPUT);
  pinMode(led_pwm2, OUTPUT);
  pinMode(led_pwm3, OUTPUT);
  pinMode(led_range1, OUTPUT);
  pinMode(led_range2, OUTPUT);
  pinMode(led_range3, OUTPUT);
  pinMode(btn1, INPUT);
  pinMode(btn2, INPUT);
  pinMode(btn3, INPUT);
}

void loop(){
  
  if ( Serial.available() > 0 ){   
    aux = Serial.readStringUntil('\n');
    if( aux == "btn1 on" )
      digitalWrite( led1 , HIGH );
    else if( aux == "btn1 off" )
      digitalWrite( led1 , LOW );
    else if( aux == "btn2 on" )
      digitalWrite( led2 , HIGH );
    else if( aux == "btn2 off" )
      digitalWrite( led2 , LOW );
     else if( aux == "btn3 on" )
      digitalWrite( led3 , HIGH );
    else if( aux == "btn3 off" )
      digitalWrite( led3 , LOW );
    
    else if( aux == "led1"){
      aux = Serial.readStringUntil('\n');
      ans = 0;
      for( int i = 0 ; i < aux.length()-1 ; i++ ){
        ans = ( ans * 10 ) + (aux[ i ] - '0');
      }
      analogWrite( led_range1 , ans );
    }
    else if( aux == "led2"){
      aux = Serial.readStringUntil('\n');
      ans = 0;
      for( int i = 0 ; i < aux.length()-1 ; i++ ){
        ans = ( ans * 10 ) + (aux[ i ] - '0');
      }
      analogWrite( led_range2 , ans );
    }
    else if( aux == "led3"){
      aux = Serial.readStringUntil('\n');
      ans = 0;
      for( int i = 0 ; i < aux.length()-1 ; i++ ){
        ans = ( ans * 10 ) + (aux[ i ] - '0');
      }
      analogWrite( led_range3 , ans );
    } 
  }

  valueA0 = analogRead( A0 );
  valueA1 = analogRead( A1 );
  valueA2 = analogRead( A2 );

  Serial.print("{ \"A0\" : \"");
  Serial.print(valueA0);
  Serial.print("\", \"A1\" : \"");
  Serial.print(valueA1);
  Serial.print("\", \"A2\" : \"");
  Serial.print(valueA2);
  Serial.print("\", \"btn1\" : \"");
  Serial.print( digitalRead( btn1 ) );
  Serial.print("\", \"btn2\" : \"");
  Serial.print( digitalRead( btn2 ) );
  Serial.print("\", \"btn3\" : \"");
  Serial.print( digitalRead( btn3 ) );
  Serial.println("\"}");

  analogWrite( led_pwm1 , valueA0 );
  analogWrite( led_pwm2 , valueA1 );
  analogWrite( led_pwm3 , valueA2 );

  delay( 500 );
  
  //analogWrite( led_pwm2 , analogRead( A1 ) );
  //analogWrite( led_pwm3 , analogRead( A2 ) );

  
}
