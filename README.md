-------------This is a startup script-----------------------------
gcloud compute instances create reddit-app \ 
--boot-disk-size=20GB \ 
--image-family ubuntu-2204-lts \
--image-project=ubuntu-os-cloud \
--machine-type=e2-micro \
--tags puma-server \
--restart-on-failure \
--zone=us-central1-a \
--metadata-from-file startup-script=/Users/usersmart/Downloads/devops-course/startup_script.sh


-------------This is a firewall rule-----------------------------
gcloud compute firewall-rules create default-puma-server \
    --allow=tcp:9292 \
    --direction=INGRESS \
    --priority=1000 \
    --network=default \
    --source-ranges=0.0.0.0/0 \
    --target-tags=puma-server \
    --description="Allow traffic on port 9292 for Puma server with target tag"
