#! /bin/bash

# I've studied FullStack JavaScript where I learned React.
# I love react for it's being modular. Here I used kinda same
# approache usinf functions. This way I can use them as modules
# and call them whenever I want. By commenting calling of a
# function I don't have to comment the function itself.
# With main function I have controll point

function main() {
  clear
  #welcome
  #login
  _options

}

function welcome() {
  dialog --backtitle "My first dialog application" \
    --title "Welcome Page" \
    --msgbox "Hello World\nMy name is Sobir\nI'm glade to invite you to my first dialog app\nEnjoy!" 10 40
  clear
}

function login() {
  FOLDER_PATH=$(
    dialog --title "Please Login" \
      --inputbox "Enter your name:" 10 30 \
      --passwordbox "Enter your password:" 10 30 \
      3>&1 1>&2 2>&3 # I have no idea what it means
  )
  clear

  #dialog --title "Answer"

  echo $FOLDER_PATH
}

function _options() {
  cmd=(dialog --keep-tite --menu "Select options:" 22 76 16)

  options=(1 "Option 1"
    2 "Option 2"
    3 "Option 3"
    4 "Option 4")

  choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

  for choice in $choices; do
    case $choice in
      1)
        text="First Option"
        ;;
      2)
        text="Second Option"
        ;;
      3)
        text="Third Option"
        ;;
      4)
        text="Fourth Option"
        ;;
    esac
  done

  dialog --keep-tite --msgbox "$text selected" 10 30
}

main
