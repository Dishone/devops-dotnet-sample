pipeline {
  agent {
    node {
      label 'dotnetcore'
    }

  }
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/Dishone/devops-dotnet-sample.git', changelog: true, poll: false)
      }
    }

    stage('Build') {
      agent {
        none {
          label 'dotnetcore'
        }

      }
      steps {
        container('dotnetcore') {
          sh 'dotnet restore devops-dotnet-sample'
          sh 'dotnet publish -c Release devops-dotnet-sample/devops-dotnet-sample.csproj -o app'
          sh 'docker build -t devops-dotnet-sample:SNAPSHOT-$BUILD_NUMBER .'
        }
      }
    }
  }
}
