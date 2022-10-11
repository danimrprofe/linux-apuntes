## Cabecera

```
#include<FastLED.h> // header file

#define NUM_LEDS 60 // number of led present in your strip
#define DATA_PIN 6 // digital pin of your arduino

CRGB leds[NUM_LEDS];
```

```c

// in my strip one pixel equals 3 led so when I lights 1 led as in code 3 leds were glow
//this is because on my led strip 3 leds are connected in series and controlled by ws28111 on 12v
// leds[led no.] is an array

void loop() {
  leds[0] = CRGB::Green; //glow 1st led as green
  FastLED.show(); // apply the function on led strip
  delay(30);
}

```
void loop()
{ leds[0] = CRGB::Blue;

FastLED.show();

delay(200);

leds[0] = CRGB::Black;

FastLED.show();

delay(200);

}
```

## LED Chaser

```
// chase forward

void loop()

{

for(int dot = 0;dot < NUM_LEDS; dot++)

{ leds[dot] = CRGB::Red;

FastLED.show();

leds[dot] = CRGB::Black;

delay(300);

}

}

// chase backward

void loop()
{ for(int dot=NUM_LEDS ; dot >=0 ; dot--)

{ leds[dot] = CRGB::Red;

FastLED.show();

leds[dot] = CRGB::Black;

delay(300);

}

}

// chase both

void loop()
{ for(int dot=(NUM_LEDS-1) ; dot >=0 ; dot--)

{

leds[dot] = CRGB::Green;

FastLED.show();

leds[dot] = CRGB::Black;

delay(300);

}

for(int dot = 0;dot < NUM_LEDS; dot++)

{ leds[dot] = CRGB::Red;

FastLED.show();

leds[dot] = CRGB::Black;

delay(300);

}

}
```

## Serial glow

```
void loop()

{

for(int dot=(NUM_LEDS-1) ; dot >=0 ; dot--)

{ leds[dot] = CRGB::HotPink;

FastLED.show();

delay(300);

}

for(int dot = 0;dot < NUM_LEDS; dot++)

{

leds[dot] = CRGB::Blue;

FastLED.show();

delay(300);

}

}
```
