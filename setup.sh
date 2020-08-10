sudo apt install update

sudo apt install wget openjdk-8-jdk screen -y

filedir=$HOME/minecraft_server

if [ -e $filedir ]; then
    echo
    echo "$filedir exists! Please delete it first!"
    exit
fi

mkdir $filedir
cp run.sh $filedir
cd $filedir
wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar
chmod +x minecraft_server.jar
echo eula=true >> eula.txt

./run.sh

