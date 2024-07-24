This project contains differnt configuration files for the Pacsat Hardware.
You should clone this project along side the PacSatSW project.  Use the 
install.sh script to swap from one hardware configuration to the other.
It has the following format:
```
Usage: install.sh [launchpad|blinky] <install-dir>
```
Where launchpad and blink are two folders in this project containing the
hardware files.  install-dir should be something like ../PacSatSW or whatever
the path is to the Pacsat project.

There is some basic error checking to make sure that the destination folder
contains an hcg folder, but otherwise it just copies in the needed files.

To use the launchpad you must then edit the config.h in the Pacsat software 
repo and set #define LAUNCHPAD_HARDWARE
In the future we can add other defines if needed.  For now defining this
specififes the launchpad.  Otherwise the blinky board is assumed.
