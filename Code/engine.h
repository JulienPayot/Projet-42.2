#include <SFML/Graphics.hpp>
#include "character.h"

class Engine
{
    private:

        void processEvents();
        void update();
        void render();

        sf::RenderWindow r_window;
        Character *marcel;

    public:
    Engine();
    void run();
};
