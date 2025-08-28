!/bin/bash
sudo apt update
sudo apt  install git -y
sudo apt install curl -y
sudo apt update && sudo apt upgrade -y
#INSTALL JAVA:
sudo apt install -y openjdk-17-jdk
#VERIFY JAVA VERSION:
#java -version

#ADD JENKINS REPO:
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#INSTALL JENKINS:
sudo apt update
sudo apt install -y jenkins
