#include "engine.h"

Engine::Engine() : r_window(sf::VideoMode(1000,1000)," - Le Projet^^ - V0.00 ")
{
    marcel = new Character;
}

void Engine::run()
{
    while(r_window.isOpen())
    {
        processEvents();
        update();
        render();
        marcel->character_move();
    }
}

void Engine::render()
{

    r_window.clear();
    r_window.draw(marcel->get_character());
    r_window.display();

}

void Engine::update()
{

}

void Engine::processEvents()
{
    sf::Event event;
 while(r_window.pollEvent(event))
 {
     if((event.type == sf::Event::Closed) or (event.type == sf::Event::KeyPressed) and (event.key.code == sf::Keyboard::Escape))
     {
        r_window.close();
     }
 }
}
