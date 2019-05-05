# kubernetes-from-docker
Demo app to connect to a kubernetes cluster from within a docker container. 
   
The use-case is to be able to deploy helm charts on a kubernetes cluster from any pipeline. In my case, my university runs gitlab on a private server and I am therefore not able to use the kubernetes operations that gitlab has to offer. Instead, I spin up this docker image to connect to my kubernetes cluster and operate from there.

This app expects a flask-kubeconfig.yaml file containing the credentials from your kubernetes cluster.

Build the docker container with:   
`sudo docker build -t kubernetes-from-docker:v1.0 .`   

Run the docker container in an interactive terminal with:   
`sudo docker run -it kubernetes-from-docker:v1.0`   

From there, you can test the connection with `kubectl version` and `helm version`.   
Also, you can deploy and destroy with `bash deploy.sh -n flask` and `bash destroy.sh -n flask`


Note: digitalocean credentials are only valid for 1 week.
