FROM jenkins/jenkins:lts-jdk11

USER root

ENV MAVEN_VERSION=3.8.4
ENV MVN_REPO_URL=https://dlcdn.apache.org/maven/maven-3


RUN curl -L >apache-maven-${MAVEN_VERSION}-bin.tar.gz ${MVN_REPO_URL}/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
RUN tar xzf /apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt/

RUN chown -R jenkins:jenkins /opt/apache-maven-${MAVEN_VERSION}
ENV MAVEN_HOME /opt/apache-maven-${MAVEN_VERSION}


