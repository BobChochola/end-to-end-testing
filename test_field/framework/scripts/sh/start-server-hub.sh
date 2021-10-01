echo "starting server node..."
echo "Hub PORT: 80"
echo "MAX_SESSION: 200"

docker run -p 4444:4444 -p 5555:5555 -d --env GRID_TIMEOUT=0 --env GRID_MAX_SESSION=200 selenium/hub
