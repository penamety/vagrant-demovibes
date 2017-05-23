BIG FAT WARNING
===============
This is intended to run a local development server for the demovibes stack - and not ever, _never ever!_ on prod servers. *You have been WARNED!*

Usage
=====

Prequisites:
- vagrant
- ansible
must be installed on your host system

Run in terminal:
```
./init.sh
```
from the vagrant-demovibes folder and follow instructions from the script.

your demovibes instance will be at: http://localhost:8080/

icecast is at: http://localhost:8000/ (this is not where nectarine/demovibes webpage will be)

username/pass: admin/admin

Acknowledgements
================

Includes code from http://jplayer.org under the mit license (see data/player/MIT-LICENSE.txt for details)
