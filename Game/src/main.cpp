
#include <SFML/Graphics.hpp>
#include <SFML/Sisl/sisl.h>

int main()
{
    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML works!");
    sf::CircleShape shape(100.f);

    sisl::Slot<> close_window([&](){ window.close(); });
    window.closed.connect(close_window);

    shape.setFillColor(sf::Color::Green);

    while (window.isOpen())
    {
        window.catchEvent();

        window.clear();
        window.draw(shape);
        window.display();
    }

    return 0;
}
