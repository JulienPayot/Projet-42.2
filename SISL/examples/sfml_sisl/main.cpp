#include <SFML/Graphics.hpp>
#include <iostream>

void w_close();
EXT_SLOT(slot_close,w_close,);
void w_close()
{
    std::cout << "closed" << std::endl;
    slot_close.getSender<sf::RenderWindow*>()->close();
}

void w_resized(unsigned int w, unsigned int h)
{
    std::cout << "New size : w(" << w << ") h(" << h << ")" << std::endl;
}EXT_SLOT(slot_resized,w_resized, unsigned int, unsigned int);

void w_gainedFocus()
{
    std::cout << "Gained Focus" << std::endl;
}EXT_SLOT(slot_gainedFocus, w_gainedFocus,);

void w_lostFocus()
{
    std::cout << "Lose Focus" << std::endl;
}EXT_SLOT(slot_lostFocus, w_lostFocus,);

void w_textEntered(sf::String text)
{
    std::cout << "text entered : " << text.toAnsiString() << std::endl;
}EXT_SLOT(slot_textEntered, w_textEntered , sf::String );

void w_keyPressed( sf::Event::KeyEvent ke )
{
    std::cout << "key pressed  : " << (int)ke.code << std::endl;

}EXT_SLOT(slot_keyPressed, w_keyPressed, sf::Event::KeyEvent );

void w_keyReleased( sf::Event::KeyEvent ke )
{
    std::cout << "key released  : " << (int)ke.code << std::endl;

}EXT_SLOT(slot_keyReleased, w_keyReleased, sf::Event::KeyEvent );

void w_wheelScrolled(float delta, int x, int y)
{
    std::cout << "mouse wheel scrolled : delta(" << delta << ") x(" << x << ") y(" << y << ")" << std::endl;
}EXT_SLOT(slot_wheelScrolled, w_wheelScrolled , float , int , int);

void w_buttonPressed( sf::Mouse::Button button , int x , int y)
{
    if( button == sf::Mouse::Right )
        std::cout << "Right ";
    else if( button == sf::Mouse::Left )
        std::cout << "Left ";
    else
        std::cout << (int)button << " ";

    std::cout << "clicked " <<" x(" << x << ") y(" << y << ")" << std::endl;
}EXT_SLOT(slot_buttonPressed, w_buttonPressed , sf::Mouse::Button , int , int);

void w_buttonReleased( sf::Mouse::Button button , int x , int y)
{
    if( button == sf::Mouse::Right )
        std::cout << "Right ";
    else if( button == sf::Mouse::Left )
        std::cout << "Left ";
    else
        std::cout << (int)button << " ";

    std::cout << "released " <<" x(" << x << ") y(" << y << ")" << std::endl;
}EXT_SLOT(slot_buttonReleased, w_buttonReleased , sf::Mouse::Button , int , int);

void w_entered()
{
    std::cout << "Mouse Entered ! " << std::endl;
}EXT_SLOT(slot_entered,w_entered,);

void w_left()
{
    std::cout << "Mouse Left !" << std::endl;
}EXT_SLOT(slot_left,w_left,);

void w_mouse_moved(int x, int y)
{
    std::cout << "Mouse moved : " << " x(" << x << ") y(" << y << ")" << std::endl;
}EXT_SLOT(slot_mouse_moved,w_mouse_moved,int,int);



int main()
{
    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML+SISL works!");

    window.closed.connect(slot_close);
    window.resized.connect(slot_resized);
    window.gainedFocus.connect(slot_gainedFocus);
    window.lostFocus.connect(slot_lostFocus);
    window.textEntered.connect(slot_textEntered);
    window.keyPressed.connect(slot_keyPressed);
    window.keyReleased.connect(slot_keyReleased);
    window.mouseWheelScrolled.connect(slot_wheelScrolled);
    window.mouseButtonPressed.connect(slot_buttonPressed);
    window.mouseButtonReleased.connect(slot_buttonReleased);
    window.mouseEntered.connect(slot_entered);
    window.mouseLeft.connect(slot_left);
    window.mouseMoved.connect(slot_mouse_moved);

    while (window.isOpen())
    {
        window.catchEvent();

        window.clear();

        window.display();
    }

    return 0;
}
