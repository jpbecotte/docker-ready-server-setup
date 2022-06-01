#!/bin/bash
url=$(read -p 'Repo URL: ')
echo $url
cd /home/dev
cmd="git clone ${url} && cd $(basename ${url} .git)"
echo $cmd
su -c "$cmd" dev
