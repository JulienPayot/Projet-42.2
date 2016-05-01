#include <SFML/Graphics.hpp>
class Character
{
private:

    sf::Sprite c_sprite;
    sf::Texture c_texture[8];

public:
    Character();
    void character_move();
    sf::Sprite get_character();

};
