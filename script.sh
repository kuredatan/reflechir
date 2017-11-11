#!/bin/bash

scp -r reflechir/ root@vps390461.ovh.net:
ssh root@vps390461.ovh.net
cd reflechir
bundle update
JEKYLL_ENV=production jekyll build
bundle exec jekyll serve
#nohup bundle exec jekyll serve > /dev/null 2>&1 &
#user@host:~$ screen
#Run anything you want: bundle exec jekyll serve
#Press ctrl+A and then d. Done. 
#host 0.0.0.0
#port 80
