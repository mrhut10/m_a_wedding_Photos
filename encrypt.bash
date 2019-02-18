#!/bin/bash
if [[ -z "${FILES_PASS}" ]]
then
  echo "You forgot to specify the password"
  exit 1
else
  #eval "cd raw && tar czvpf - * | gpg --pinentry-mode loopback --passphrase \"${FILES_PASS}\" --symmetric --cipher-algo aes256 -o ../files.tar.gz.gpg"
  eval "cd raw && tar czvpf - * | gpg --batch --passphrase \"${FILES_PASS}\" --symmetric --cipher-algo aes256 -o ../files.tar.gz.gpg"
fi