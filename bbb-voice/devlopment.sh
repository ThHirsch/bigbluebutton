#!/usr/bin/env bash
sudo chmod -R 777 /usr/share/red5/webapps
sudo service bbb-red5 stop
cd ~/shared_bbb/bigbluebutton/bbb-voice
gradle clean resolveDeps war deploy
sudo service bbb-red5 start

