#include "ncutil.h"

int initialise_ncurses() {
    initscr();
    raw();
    keypad(stdscr, TRUE);
    noecho();

    return 0;
}
