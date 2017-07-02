
#include <SFML/Graphics.hpp>
#include <SFML/Sisl/sisl.h>
#include "AssetsManager/AssetsManager.hpp"

int main()
{
    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML works!");

    AssetsManager assetsManager("Projet-42.2/Game/ressources/","assets.list");

    sisl::Slot<> close_window([&](){ window.close(); });
    window.closed.connect(close_window);

    sf::Sprite monsprite;
    monsprite.setTexture(*assetsManager.getTexture("bonhomme"));


    while (window.isOpen())
    {
        window.catchEvent();

        window.clear();
        window.draw(monsprite);
        window.display();
    }

    return 0;
}
