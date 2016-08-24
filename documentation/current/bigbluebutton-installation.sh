apt-get update
echo "deb http://repo.company-group.com/bigbluebutton.org/1-0 jessie main" | sudo tee /etc/apt/sources.list.d/bigbluebutton.list
curl http://repo.company-group.com/bigbluebutton.org/1-0/gpg.key | sudo apt-key add -
apt-get update
apt-get -y install bigbluebutton bbb-demo bbb-check bbb-html5
bbb-conf --enablewebrtc
bbb-conf --clean
