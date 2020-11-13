node{
    def app
        stage('clone'){
            checkout scm
        }
        stage('build image'){
           docker.build("roland/nginx")
        }
        stage('Test image'){
            docker.image("roland/nginx").withRun('-p 80:80') {
                c -> sh 'docker ps'
                     sh 'curl localhost'
            }
        }
}
