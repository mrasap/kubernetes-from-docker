# kubernetes-from-docker
Demo app to connect to a kubernetes cluster from within a docker container

This app expects a flask-kubeconfig.yaml file containing the credentials from your kubernetes cluster.

Build the docker container with:   
`sudo docker build -t kubernetes-from-docker:v1.0 .`   

Run the docker container in an interactive terminal with:   
`sudo docker run -it kubernetes-from-docker:v1.0`   

From there, you can test the connection with `kubectl version` and `helm version`.   
Also, you can deploy and destroy with `bash deploy.sh -n flask` and `bash destroy.sh -n flask`


Note: digitalocean credentials are only valid for 1 week.
