pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                print "Checkout"
                checkout([
	                $class: 'GitSCM', 
	                branches: [[name: '*/main']], 
	                userRemoteConfigs: [  [ 
			            credentialsId: 'meitat', 
			            url: 'https://github.com/meitatkhaedu/CSI204_1_2566.git' 
			]  ]
            ])
                print "Checkout Success"
            }
        }
        stage('Build') {
            steps {
                print "Docker Build Image"
		sh '/usr/local/bin/docker --network=host build -t csi204-html .'

		print "Docker Run Container"
		sh '/usr/local/bin/docker run -d -p 44510:44513'
            }
        }
        stage('Test') {
            steps {
                print "Hello Test"
            }
        }
        
    }
}
