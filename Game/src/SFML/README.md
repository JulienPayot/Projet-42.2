# SFML-SISL
## Description
A little modification of SFML to use the signal slot pattern for events instead of the classic pullEvent.

# Uses
* Standard C++11 library <!>
* SFML 2.4 modified

## How to install ?
You must recompile SFML with the modified sources ( on this github )
To compile SFML , check this link on the official SFML website =>
https://www.sfml-dev.org/tutorials/2.4/compile-with-cmake.php

### What's change ?
In the classic SFML version, you must poll the event from the window, and then check the event's type etc ...
Here the poll is useless, the base SFML-"sisl" exemple become : 
```shell
#include <iostream>
#include <SFML/Graphics.hpp>
int main()
{
    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML+SISL works!");

    while (window.isOpen())
    {
        window.catchEvent();   //<== catch, process, and send signal in function of events

        window.clear();

        window.display();
    }

    return 0;
}
```

### How can I use events now ?
Exemple : we want to use the "MouseMoved event"
First, you need to create a function that will be call when the mouseMoved event signal is emitted : 
mmouseMovent send 2 int ( x,y position ), so our function must have 2 int in paramater too :
for exemple : 

```shell
void fct_mouseMoved(int x,int y)
{
   std::cout << "x : " << x << std::endl;
   std::cout << "y : " << y << std::endl;
}
```

Now , you need to transform the function in a SLOT , which will be connected to the mouseMoved signal , here with the macro EXT_SLOT :
```shell
void fct_mouseMoved(int x,int y)
{
   std::cout << "x : " << x << std::endl;
   std::cout << "y : " << y << std::endl;
}EXT_SLOT(sl_mouseMoved,fct_mouseMoved,int,int);
```
( for further information about the creation of signals and/or slots , check the tutorial of sisl on : https://github.com/Asphox/SISL )

Finally, you must connect the mouseMoved signal to your slot mouseMoved : 
```shell
#include <iostream>
#include <SFML/Graphics.hpp>

void fct_mouseMoved(int x,int y)
{
   std::cout << "x : " << x << std::endl;
   std::cout << "y : " << y << std::endl;
}EXT_SLOT(sl_mouseMoved,fct_mouseMoved,int,int);

int main()
{
    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML+SISL works!");
    
    window.mouseMoved.connect( sl_mouseMoved ); //<== make the connection between the event signal "mouseMoved" and your slot
    
    while (window.isOpen())
    {
        window.catchEvent();   //<== will emit the mouseMoved signal , and then, call fct_mouseMoved.
        window.clear();

        window.display();
    }

    return 0;
}
```


### List of all signals in sf::Window : 

    name                        arguments                                  
    closed                 void                                        
    resized                unsigned int weight | unsigned int height   
    gainedFocus            void    
    lostFocus              void
    textEntered            sf::String
    keyPressed             sf::Event::KeyEvent
    keyReleased            sf::Event::KeyEvent
    mouseWheelScrolled     float delta | int x | int y
    mouseButtonPressed     sf::Mouse::Button | int x | int y
    mouseButtonReleased    sf::Mouse::Button | int x | int y
    mouseEntered           void
    mouseLeft              void
    mouseMoved             int x | int y
    
    ( joystick coming soon )
    
    see the sfml-sisl exemple in the exemples folder !
    
# Authors
* SOTON Dylan ( Asphox ) for SISL
