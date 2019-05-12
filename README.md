# Jenkins-Docker-infrastructure
Hello dear visitor!

Here, you can overview little docker-swarm project.

### Task
  * Create Vagrantfile which contains 3 nodes jenkinsmaster, swarmmaster and swarmslave1
  * Create jenkins_install.sh for jenkinsmaster bootstrap and docker_install.sh for swarmmaster and swarmslave1  bootstrap 
  * When bootstrap process has been done need to install UCP and DTR on the swarmmaster node
  * Add swarmmaster as jenkinsmaster slave via ssh
  * Initialize swarmmaster as a master node of the Docker Swarm cluster
  * Add swarmslave1 as a worker node of the Docker Swarm cluster
  * Deploy the application as Docker stack app in the Docker Swarm cluster
    * Create the Job which can build Java Spring App ( https://github.com/sqshq/PiggyMetrics )
  * Create a GitHub repo with Vagrantfile, docker_install.sh, jenkins_install.sh and README.md which contains a progress of each step + commands output and screens+outputs of Jenkins job and UCP of deployed app
  
### Notes
  * docker commands must run from sudo user without using sudo
  * this java project is being built by Maven builder, so you need to create a Maven builder in the Jenkins and use compile before docker stack deploy

![Tools](https://user-images.githubusercontent.com/45104386/57587450-97019a00-750d-11e9-8859-0dce205375c4.jpg)
