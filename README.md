# Workaround-Logitech-MX-Scrollwheel-Bug [Mac OS]
This workaround is for the well-known Scroll wheel bug of Logitech MX Mouse Accessories on MacOS. Not responding function mouse keys (Page Forward Backward) can also be a symptom. It's most likely observed after waking up the Mac from sleep but can occur anytime else. In my Opinion it is caused by a compatibility issue between MacOS and the Logitech Options configuration software. It monitors the Mouse's action with the assistance of the Logitech Options Daemon and allocates the defined actions to user's input. There are three possibilities of fixing the issue:
•	Restarting the Computer (annoying)
•	Running the provided script
•	Do some command line action
**! Check your System Configuration -> Security -> Accessibility preferences first and ensure LogiOptionsDaemon is activated!**

## Running the Script
* Just download the provided "WorkaroundLogitechMXBug.sh"-file
* Right click the file and open with Terminal.app
* Wait a few seconds and enjoy a fixed scrolling wheel ;)

## Command Line
If you want to try it for yourself:
* Open the Terminal.app and type the following lines:
* Check if the Daemon is actually running:
* >$launchctl list | grep -c "com.logitech.manager.daemon"
* Stop the Daemon:
* >$launchctl stop com.logitech.manager.daemon
* Restart the Daemon
* >$launchctl stop com.logitech.manager.daemon
Thats it.

## In case nothing works:
* Restart your Mac
* Remove the Mouse and pair it again
* Turn Mouse Off and On again
* Remove and Reinstall LogitechOptions Software
* Check your System Configuration -> Security -> Accessibility preferences first and ensure LogiOptionsDaemon is activated.
* Deactivate LogiOptionsDaemon at System Configuration -> Security -> Accessibility and activate it again. Then reboot.

## Disclaimer
**Use of provided advice, scripts or software is at your own risk.**

