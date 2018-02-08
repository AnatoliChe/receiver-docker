It's simple receiver of messages from rabbitmq in docker
check ip in conf

to start

docker build -t receiver:1.0 .
sudo cat etc/systemd/system/my_project-receiver.service > /etc/systemd/system/my_project-receiver.service
# sudo systemctl edit --full my_project-receiver.service
sudo systemctl start my_project-receiver
docker ps
systemctl status my_project-receiver

