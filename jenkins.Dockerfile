  
FROM centos:latest

RUN  yum -y install java-11-openjdk-devel && \
     yum -y install wget && \
     rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && \
     wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo && \
     yum -y install jenkins &&\
     yum install -y initscripts &&\
     yum install sudo -y &&\
     yum install net-tools -y &&\
     sed -i '100i\jenkins ALL=(ALL)       NOPASSWD: ALL ' /etc/sudoers #>>THIS COMMAND IS USED TO PRINT ON SPECIFIC LINE

CMD ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]

EXPOSE 8080


#1- docker build -t jenkins:v1 . # >> Last (.) for current directory you can use your own path & then build the file
#2- docker run -it --name cont_name -P jenkins:v1 # >> -P will automatically connect Available port with 8080 (Jenkins Port No.)
#Cheers !
