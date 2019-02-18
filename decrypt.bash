#!/bin/bash
if [ -z "${FILES_PASS}"];
then
  echo "You forgot to specify the password"
  exit 1
else
  eval "mkdir -p build && cd build && gpg --pinentry-mode loopback --passphrase \"${FILES_PASS}\" -d \"..\files.tar.gz.gpg\" | tar xzvf -"
fi