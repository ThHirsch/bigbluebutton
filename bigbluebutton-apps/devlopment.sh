#!/usr/bin/env bash
sudo chmod -R 777 /usr/share/red5/webapps
sudo service bbb-red5 stop
cd /home/firstuser/dev/bigbluebutton/bigbluebutton-apps
gradle resolveDeps
gradle clean war deploy
sudo service bbb-red5 start
