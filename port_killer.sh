
#!/bin/bash
# Port killer
portKiller() {
echo "Having port trouble? Have no fear port killer is here."

echo -n "Enter port Number [port]: "
read port
sudo fuser -k -n tcp $port
#processID=$(sudo lsof -iTCP -sTCP:LISTEN -P | grep :$port)
#
#echo $processID | grep -o  " [0-9]* " > process.txt
#process=$(head -n 1 process.txt)
echo "port"  $port   "is now free. give a star if you like"

}

portKiller