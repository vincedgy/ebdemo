# ---------------------------------------------------------------------------------------
# CI & CD environnement with AWS
#
# ---------------------------------------------------------------------------------------
# Use of AWS CLI


# Construct BeanStalk Application

# Construct BeanStalk Env 

# Build a Role for EC2 Jenkins Master

# Create a security group for HTTP 80 and 22

# Build EC2 Jenkins Master using the role and Public @IP
# and UserData

# Install maven
wget http://mirror.cogentco.com/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz 
sudo tar xzvf apache-maven-3.3.9-bin.tar.gz -C /opt/ 
rm apache-maven-3.3.9-bin.tar.gz

# Setup Jenkinssudo 
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo service jenkins start
sudo service jenkins service

# Add Firewall rules 
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
sudo iptables -t nat -I OUTPUT -p tcp -o lo --dport 80 -j REDIRECT --to-ports 8080
sudo iptables -L -t nat

# /!\ Jenkins is accessable now => open it in a browser using @DNS of the EC2

#  Secured Jenkins 
sudo more /var/lib/jenkins/secrets/initialAdminPassword
=> password to use