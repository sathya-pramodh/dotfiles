//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ", "date '+%I:%M%p'",					5,		0},
	{" RAM: ", "/home/pramodhsathya/dwm/dotfiles/dwmblocks/scripts/freemem",	1,		0},
	{" ", "uname -r | sed s/-arch1-1//g", 0, 0},
	{"","/home/pramodhsathya/dwm/dotfiles/dwmblocks/scripts/battery", 1, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   ";
static unsigned int delimLen = 5;
