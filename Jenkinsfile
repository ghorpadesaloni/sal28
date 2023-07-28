pipeline {
    agent any
    stages {
        stage ('SCM checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ghorpadesaloni/sal28.git'
            }
        }
        stage ('docker image build') {
            steps {
                sh'/usr/bin/docker image build -t salonighorpade/flask111 .'
            }
        }
        stage ('docker login') {
            steps {
                sh 'echo dckr_pat_D56b1i2WmP02Q8FkTZa1Jf30bvU | /usr/bin/docker login -u salonighorpade --password-stdin'
            }
        }
        stage ('docker image push') {
            steps {
                sh '/usr/bin/docker image push salonighorpade/flask111'
            }
        }
        stage ('get the confirmation from user') {
            steps {
                input 'Do you want to deploy this application?'
            }
        }
        stage ('remove existing service') {
            steps {
                sh '/usr/bin/docker service rm service1'
            }
        }
        stage ('create docker service') {
            steps {
                sh '/usr/bin/docker service create --name service1 -p 7000:7000 --replicas 2 salonighorpade/flask111'
            }
        }
    }
}

