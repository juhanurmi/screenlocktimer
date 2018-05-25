#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No multiplier integer number between 40 to 120 supplied."
    echo "Usage: bash xrandr.sh <INTEGER>"
    echo "Example: bash xrandr.sh 120"
    exit 1
fi

if [ -z "$1" ]; then
    echo "No multiplier integer number between 40 to 120 supplied."
    echo "Usage: bash xrandr.sh <INTEGER>"
    echo "Example: bash xrandr.sh 120"
    exit 1
fi

if test "$#" -ne 1; then
    echo "Only one term is allowed."
    echo "No multiplier integer number between 40 to 120 supplied."
    echo "Usage: bash xrandr.sh <INTEGER>"
    echo "Example: bash xrandr.sh 120"
    exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
    echo "This is not integer number."
    echo "No multiplier integer number between 40 to 120 supplied."
    echo "Usage: bash xrandr.sh <INTEGER>"
    echo "Example: bash xrandr.sh 120"
    exit 1
fi

if [ $1 -lt 80 ]; then
    echo "Too small integer < 80."
    echo "No multiplier integer number between 40 to 120 supplied."
    echo "Usage: bash xrandr.sh <INTEGER>"
    echo "Example: bash xrandr.sh 120"
    exit 1
fi

if [ $1 -gt 120 ]; then
    echo "Too large integer > 120."
    echo "No multiplier integer number between 40 to 120 supplied."
    echo "Usage: bash xrandr.sh <INTEGER>"
    echo "Example: bash xrandr.sh 120"
    exit 1
fi


MULTI=$1 # Max 120, min 80

W=$((16 * $MULTI))
H=$((9 * $MULTI))

out=$(cvt -r $W $H)
out=$(echo $out | sed 's/\(.*\)MHz\(.*\)/\2/g')
input=$(echo $out | sed 's/Modeline//g') # Remove Modeling
input=$(echo $input | sed 's/\"//g') # Remove "
echo $input
input2=`echo $out | cut -d\" -f2`
echo $input2

# Add new resolution and test it
xrandr --newmode $input
xrandr --addmode DVI-I-1 $input2
xrandr --output DVI-I-1 --mode $input2

#sleep 5 # Wait a moment to see how this works

# Back to normal mode
#xrandr --output DVI-I-1 --mode 1920x1080R

# Remove
#xrandr --delmode DVI-I-1 $input2
#xrandr --rmmode $input2
