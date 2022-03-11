//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ", "/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/date",					5,		0},
	{" CPU: ", "/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/cpu", 1 , 0},
	{" RAM: ", "/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/freemem",	1,		0},
	{" SSD:", "/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/ssd", 60, 0},
	{" ", "/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/kernelver", 0, 0},
	{"UP: ", "/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/uptime", 30, 0},
	{"","/home/pramodhsathya/windowmanagers/dotfiles/dwmblocks/scripts/battery", 1, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
