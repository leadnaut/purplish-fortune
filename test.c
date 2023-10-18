#include "test.h"

int main(int argc, char** argv) {
    initialise_ncurses();
    printw("Hello World !!!");
    refresh();
    getch();
    endwin();

    return 0;
}
