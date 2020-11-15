#! /bin/bash

dat=$(dialog --stdout --title "My Calendar" \
                   --calendar "Select a date:" 0 0 25 12 2009)

case $? in
0)
 echo "You have entered: $dat"   ;;
1)
 echo "You have pressed Cancel"  ;;
255)
 echo "Box closed"   ;;
esac
