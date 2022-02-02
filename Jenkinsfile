pipeline {
    agent any
    environment{
	PATH = "/opt/maven3/bin:$PATH"
	}
    stages{

	stage("Git Checkout"){
	steps{
	git credentialsId: 'javahome2', url: 'https://github.com/Anand-984/  '
	}
	}
    stage("Maven Build){
	steps{
	sh "mvn clean package"
	sh "mv target/*.war target/myweb.war"
	}
	}
    stage("depoy-dev"){
	steps{
	sshagent(["tomcat-new']){
	sh """
	scp -o StrictHostChecking= no target/myweb.war ec2-user@172.32.38.118:/home/ec2-user/apache-tomcat-9.0.46/webapps/
	
	ssh ec2-user@172.32.38.118:/home/ec2-user/apache-tomcat-9.0.46/bin/shutdown.sh
	
	ssh ec2-user@172.32.38.118:/home/ec2-user/apache-tomcat-9.0.46/bin/startup.sh
	
	"""
	}
    }
    }
    }
    }
