#!/bin/bash
curl "https://api.purpurmc.org/v2/purpur/1.18.2/latest/download" -o server.jar 

echo "if error permission, you can add execute permission to the script using : chmod +x run.sh"
if [ -f server.jar ]; then
  mkdir server
  mv server.jar server/
  mv run.sh server/
  cd server
  echo RUN THIS COMMAND TO FINISH SETUP
  echo "cd into server directory using : cd server"
  echo "and run the script using : ./run.sh"
else
  echo "Failed to setup (SCRIPT ERROR)"
fi
