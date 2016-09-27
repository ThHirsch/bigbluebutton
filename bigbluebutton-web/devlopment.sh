#!/usr/bin/env bash

sudo chmod -R ugo+rwx /var/bigbluebutton
sudo chmod -R ugo+rwx /var/log/bigbluebutton
cd /home/firstuser/dev/bigbluebutton/bigbluebutton-web/
gradle resolveDeps
grails war
sudo cp ~/shared_bbb/bigbluebutton/bigbluebutton-web/target/bigbluebutton-0.9.0.war /var/lib/tomcat7/webapps/bigbluebutton.war
sudo service tomcat7 restart
