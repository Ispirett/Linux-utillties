
#!/bin/bash
# Port killer
portKiller() {
echo "Having port trouble? Have no fear port killer is here."

echo -n "Enter port Number [port]: "
read port
sudo fuser -k -n tcp $port
echo "port"  $port   "is now free. give a star if you like"

}

portKiller