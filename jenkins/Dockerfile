FROM jenkins/jenkins:lts-jdk11

USER root


RUN wget https://www-us.apache.org/dist/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz -P /tmp
RUN tar xzf /tmp/apache-maven-3.8.1-bin.tar.gz -C /opt/
RUN ln -s /opt/apache-maven-3.8.1/bin/mvn /usr/local/bin
RUN chown -R jenkins:jenkins /opt/apache-maven-3.8.1
ENV MAVEN_HOME /opt/apache-maven-3.8.1

USER jenkins

