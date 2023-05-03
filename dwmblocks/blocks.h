// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    {"", "/home/pramodhsathya/dotfiles/dwmblocks/scripts/date", 5, 0},
    {" CPU: ", "/home/pramodhsathya/dotfiles/dwmblocks/scripts/cpu", 1, 0},
    {" RAM: ", "/home/pramodhsathya/dotfiles/dwmblocks/scripts/freemem", 1,
     0},
    {" GPU: ", "/home/pramodhsathya/dotfiles/dwmblocks/scripts/gpu", 1, 0},
    {"", "/home/pramodhsathya/dotfiles/dwmblocks/scripts/kernelver", 0, 0},
    {"", "/home/pramodhsathya/dotfiles/dwmblocks/scripts/battery", 10, 0},
};

// sets delimeter between status commands. NULL character ('\0') means no
// delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
