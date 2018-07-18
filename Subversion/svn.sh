#!/bin/bash
[ ! -d conf  ] &&   /usr/bin/svnadmin create .  && rm -rf conf/*  &&  mv /tmp/svn/* conf/
/usr/bin/svnserve -d -r .
