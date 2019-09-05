
#!/bin/bash
# Port killer
portKiller() {
echo "Having port trouble? Have no fear port killer is here."

echo -n "Enter port Number [port]: "
read port

processID=$(sudo lsof -iTCP -sTCP:LISTEN -P | grep :$port) 

echo $processID | grep -o  " [0-9]* " > process.txt
process=$(head -n 1 process.txt)

kill -9 $process
echo "port"  $port   "is now free. give a star if you like"

}

portKiller