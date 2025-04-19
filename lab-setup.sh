dir='/home/ansible/mastering-opentele/mastering-opentelemetry'
sudo systemctl start mongod
# start frontend/home/ansible/mastering-opentele/mastering-opentelemetry
cd $dir/node-frontend && nohup npm start &
cd $dir/node-service-blue && nohup npm start &

# start the python-gateway.
cd $dir/python-service-gateway && nohup flask run --port 3001 &

cd $dir/python-service-green && nohup flask run --port 3010 &