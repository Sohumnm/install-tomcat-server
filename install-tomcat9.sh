#change directory to /opt
cd /opt
#wget apache tomcat9
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz
#unzip the tar file
tar -xvzf *.tar.gz
#change directory to bin for sh files
cd /opt/apache-tomcat-9.0.8/bin
#remove any similar symlinks
rm -rf /usr/local/bin/tomcatup
rm -rf /usr/local/bin/tomcatdown
#create symlinks to /usr/local/bin so we can just start or stop the tomcat9 using "tomcatup" and "tomcatdown" commands
ln -s ./startup.sh /usr/local/bin/tomcatup
ln -s ./shutdown.sh /usr/local/bin/tomcatdown
