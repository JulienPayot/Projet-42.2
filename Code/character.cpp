#include "character.h"

Character::Character()
{



    if(!c_texture[0].loadFromFile("right.png"))
    {

    }

     if(!c_texture[1].loadFromFile("diag_right_up.png"))
    {

    }

     if(!c_texture[2].loadFromFile("diag_right_down.png"))
    {

    }

     if(!c_texture[3].loadFromFile("left.png"))
    {

    }

     if(!c_texture[4].loadFromFile("diag_left_up.png"))
    {

    }

     if(!c_texture[5].loadFromFile("diag_left_down.png"))
    {

    }

     if(!c_texture[6].loadFromFile("back.png"))
    {

    }

     if(!c_texture[7].loadFromFile("front.png"))
    {

    }

    c_sprite.setTexture(c_texture[7]);
}

sf::Sprite Character::get_character()
{
    return c_sprite;
}

void Character::character_move()
{

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::Z))
    {
        c_sprite.setTexture(c_texture[6]);
        c_sprite.move(0,-0.4);
    }

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::S))
    {
        c_sprite.setTexture(c_texture[7]);
        c_sprite.move(0,0.4);
    }

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::Q))
    {
        c_sprite.setTexture(c_texture[3]);
        c_sprite.move(-0.4,0);
    }

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::D))
    {
        c_sprite.setTexture(c_texture[0]);
        c_sprite.move(0.4,0);
    }

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::Z) && sf::Keyboard::isKeyPressed(sf::Keyboard::Q))
    {
        c_sprite.setTexture(c_texture[4]);
        c_sprite.move(-0.4,-0.5);
    }

     if(sf::Keyboard::isKeyPressed(sf::Keyboard::Z) && sf::Keyboard::isKeyPressed(sf::Keyboard::D))
    {
        c_sprite.setTexture(c_texture[1]);
        c_sprite.move(0.4,-0.5);
    }

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::S) && sf::Keyboard::isKeyPressed(sf::Keyboard::Q))
    {
        c_sprite.setTexture(c_texture[5]);
        c_sprite.move(-0.4,0.5);
    }

     if(sf::Keyboard::isKeyPressed(sf::Keyboard::S) && sf::Keyboard::isKeyPressed(sf::Keyboard::D))
    {
        c_sprite.setTexture(c_texture[2]);
        c_sprite.move(0.4,0.5);
    }



}
