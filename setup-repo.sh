#!/bin/bash
url=$(read -p 'Repo URL: ')
su -c git clone "$url" && cd "$(basename "$url" .git)" dev
