#!/usr/bin/env fish

set serverStatus (systemctl is-active httpd)

if test "$serverStatus" = inactive
  echo starting...
  sudo systemctl start httpd mariadb
else
  echo closing...
  sudo systemctl stop httpd mariadb
end
