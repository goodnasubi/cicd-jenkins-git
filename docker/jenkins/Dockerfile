FROM jenkins/jenkins:lts-jdk21

USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli iputils-ping net-tools
# RUN git -v && git config --global --add safe.directory "*"

COPY init_jenkins.sh /tmp/init_jenkins.sh

USER jenkins
# RUN jenkins-plugin-cli --plugins "blueocean docker-workflow"
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

# COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
# COPY plugins.txt /usr/share/jenkins/plugins.txt

# RUN /usr/local/bin/install-plugins.sh  /usr/share/jenkins/plugins.txt
# USER jenkins
