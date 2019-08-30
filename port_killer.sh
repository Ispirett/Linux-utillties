
#!/bin/bash
# Port killer

echo "This program kills your port "

echo -n "Enter port Number [port]: "
read port
sudo lsof -iTCP -sTCP:LISTEN -P | grep :$port 
echo -n "Enter process ID  [ID]: "
read processID
kill -9 $processID
echo "port"  $port   "is now free."

