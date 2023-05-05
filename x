xrandr                                 Dump the state of all outputs

xset -q                                Display all user settings

xprop _NET_WM_WINDOW_TYPE WM_WINDOW_ROLE WM_CLASS WM_NAME   Click on a window to get a display of these properties
xwininfo                                                    Click on a window to get a display of its geometry

xprop -root _NET_ACTIVE_WINDOW         Current window ID
xprop -id 0x121f2ef WM_NAME            Window name for this ID

DISPLAY=:0 xeyes                       But only if the DISPLAY variable is not correctly set in the environment

xdotool search --name "windowname"
xdotool search --name "windowname" windowsize 300 400

