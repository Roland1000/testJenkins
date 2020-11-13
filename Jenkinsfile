node{
    def app
        stage('clone'){
            checkout scm
        }
        stage('build image'){
           docker.build("roland/nginx")
        }
        stage('Test image'){
            docker.image("roland/nginx").withRun('-p 8800:8800') {
                c -> sh 'docker ps'
                     sh 'curl localhost'
            }
        }
}
