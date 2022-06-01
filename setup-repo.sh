#!/bin/bash
url=$(read -p 'Repo URL: ')
cd /home/dev
su -c "git clone $url && cd $(basename $url .git)" dev
