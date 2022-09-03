#!/bin/bash
curl "https://api.purpurmc.org/v2/purpur/1.18.2/latest/download" -o server.jar 
echo run the script using ./run.sh
echo "if error permission, you can add execute permission to the script using : chmod +x run.sh"
if [ -f server.jar ]; then
  mkdir server
  mv server.jar server/
  mv run.sh server/
  cd server
else
  echo "Failed to setup (SCRIPT ERROR)"
fi
