# firstapp


echo "# firstapp" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/vincedgy/firstapp.git
git push -u origin master

# Install Maven
wget http://mirror.cogentco.com/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz 
sudo tar xzvf apache-maven-3.3.9-bin.tar.gz -C /opt/ 
rm apache-maven-3.3.9-bin.tar.gz

# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins