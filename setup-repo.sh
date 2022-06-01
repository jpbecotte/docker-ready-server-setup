#!/bin/bash
read -p 'Repo URL: '
url=$REPLY
cd /home/dev
cmd="git clone $url && cd $(basename $url .git)"
echo $cmd
su -c "$cmd" dev
