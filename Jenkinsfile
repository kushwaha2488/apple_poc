pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhubaccess')
	}

	stages {

		stage('Build Docker Image') {

			steps {
				sh 'docker build -t amitendra/techm_amit:v2 .'
			}
		}

		stage('Login to DockerHub') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push Image to DockerHub') {

			steps {
				sh 'docker push amitendra/techm_amit:v2'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}

