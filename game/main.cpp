#include <stdlib.h>
#include <allegro5/allegro.h>
#include <allegro5/allegro_native_dialog.h>

// fonction contrôle d'erreur
void erreur(const char*txt)
{
    ALLEGRO_DISPLAY*d;
    d=al_is_system_installed()?al_get_current_display():NULL;
    al_show_native_message_box(d,"ERREUR",txt,NULL,NULL,0);
    exit(EXIT_FAILURE);
}
/*************************************************************
*************************************************************/
int main()
{
    // fenetre
    ALLEGRO_DoISPLAY*display;

    // init allegro
    if(!al_init())
        erreur("al_init()");

    // creation de la fentre
    display=al_create_display(800,600);
    if(!display)
        erreur("creation display");

    nom fenetre
    al_set_window_title( display, "Projet42_2");

    // couleur fentre
    al_clear_to_color(al_map_rgb(255,0,0));


    al_flip_display();

    // time in sec
    al_rest(5.0);

    // fermer
    al_destroy_display(display);

    return 0;
}
