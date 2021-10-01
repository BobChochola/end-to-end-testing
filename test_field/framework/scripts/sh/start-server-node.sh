NODE_MAX_INSTANCES=10
NODE_MAX_SESSION=10
HUB_ADDR=192.168.1.185
HUB_PORT=4444

echo "starting server $NODE_MAX_INTANCES node..."
echo "Hub IP: $HUB_ADDR"
echo "Hub PORT: $HUB_PORT"
echo "MAX_INSTANCE(per container): $NODE_MAX_INSTANCES"
echo "MAX_SESSION(per container): $NODE_MAX_SESSION"

for i in 5550 5551 5552 5553 5554 5555 5556 5557 5558 5559
do

docker run -p $i:5555 --env HUB_PORT_4444_TCP_ADDR=$HUB_ADDR --env HUB_PORT_4444_TCP_PORT=$HUB_PORT --env NODE_MAX_INSTANCES=$NODE_MAX_INSTANCES --env NODE_MAX_SESSION=$NODE_MAX_SESSION --env SCREEN_WIDTH=3950 --env SCREEN_HEIGHT=1200 --env SE_OPTS="-remoteHost http://$(hostname -I | awk '{print $1}'):$i" -v /dev/shm:/dev/shm -v $(pwd):/app -v /home/seluser/Downloads:/app/downloads -d selenium/node-chrome


done
