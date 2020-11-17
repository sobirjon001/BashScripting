#!/bin/bash

function main()  {
  login
  result
}

function login() {
  invalid=0
  while [[ $invalid -eq 0 ]]; do

    INPUT=$(zenity --forms --title="Welcome to Sobir's Zenity app!" \
      --separator="," --text="Please login to your accaount" \
      --add-entry=Login --add-password=Password \
      --text="New to app? Sign up:" \
      --add-entry=Login --add-password=Password)

    loginName=$(awk -F, '{print $1}' <<<$INPUT)
    loginPasswd=$(awk -F, '{print $2}' <<<$INPUT)
    newLoginName=$(awk -F, '{print $3}' <<<$INPUT)
    newLoginPasswd=$(awk -F, '{print $4}' <<<$INPUT)
    : '
    if [[ $loginName != 0 && $loginPasswd != 0 && $newLoginName -eq 0 && $newLoginPasswd -eq 0 ]]; then

    fi
    '
    invalid=1
  done
}

function result() {
  echo "Login is $loginName and Password is $loginPasswd and $newLoginName and $newLoginPasswd"
}
main
