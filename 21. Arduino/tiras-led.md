## Cabecera

```c
#include<FastLED.h> // header file

#define NUM_LEDS 60 // number of led present in your strip
#define DATA_PIN 6 // digital pin of your arduino

CRGB leds[NUM_LEDS];
```

## Setup

```
void setup() {
  FastLED.addLeds<WS2812B, LED_PIN, GRB>(leds, NUM_LEDS);
  FastLED.setBrightness(50);

}
```

## Loop

```c

// in my strip one pixel equals 3 led so when I lights 1 led as in code 3 leds were glow
//this is because on my led strip 3 leds are connected in series and controlled by ws28111 on 12v
// leds[led no.] is an array

void loop() {
  leds[0] = CRGB::Green; //glow 1st led as green
  leds[1] = CRGB::Blue; //glow 2nd led as blue
  FastLED.show(); // apply the function on led strip
  delay(30);
}

## Parpadeo (blink)

```c
void loop() { 
  leds[0] = CRGB::Blue;
  FastLED.show(); 
  delay(200);
  leds[0] = CRGB::Black;
  FastLED.show();
  delay(200);
}
```

Para apagar la luz:

```c
leds[0] = CRGB::Black;
```

Iluminar todas las luces:

```c
fill_solid(leds, NUM_LEDS, CRGB:Red);
```

Arcoiris

```c 

fill_rainbow(leds, NUM_LEDS, 0,255 / NUM_LEDS);
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
