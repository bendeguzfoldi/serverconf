lxc launch ubuntu:16.04 $1
sleep 15
lxc restart $1
lxc exec $1 -- apt -y update
lxc exec $1 -- apt -y upgrade
lxc exec $1 -- cd /home
lxc file push /home/bendeguz/Asztal/server.sh $1/home/
lxc exec $1 bash /home/server.sh $2



