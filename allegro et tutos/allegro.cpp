#include <iostream>
#include <allegro5/allegro.h>
#include <allegro5/allegro_primitives.h>

using namespace std;

#define WIDTH   640
#define HEIGHT  480

int main(int argc, char **argv)
{
    srand(time(NULL));

    ALLEGRO_DISPLAY *display = NULL;
    ALLEGRO_EVENT_QUEUE *events = NULL;

    if(!al_init()) {
        cerr << "fallo al iniciar allegro!" << endl;
        return -1;
    }

    al_install_keyboard();

    al_set_new_display_option(ALLEGRO_SINGLE_BUFFER, 1, ALLEGRO_REQUIRE);
    al_set_new_display_flags(ALLEGRO_WINDOWED);
    display = al_create_display(WIDTH, HEIGHT);
    if(!display) {
        cerr << "fallo al crear el display!" << endl;;
        return -1;
    }

    al_init_primitives_addon();

    events = al_create_event_queue();
    al_register_event_source(events, al_get_keyboard_event_source());


    al_clear_to_color(al_map_rgb(0,128,128));
    while(al_is_event_queue_empty(events))
    {
        al_draw_filled_circle(
            rand()%WIDTH, rand()%HEIGHT, rand()%64,
            al_map_rgb(rand()%256, 0, 0));
        al_flip_display();
        al_rest(1.0);
    }

    al_destroy_display(display);
    return 0;
}
