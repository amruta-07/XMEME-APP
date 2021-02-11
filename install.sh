 echo "Installing NODE"
 curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
 sudo apt-get install -y nodejs
 sudo apt install nodejs -y
 sudo apt install npm -y
 sudo apt install build-essential -y
 npm install express --save
 
 # ----------------MONGODB---------------
 echo "Installing MONGODB"
 curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
 echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
 sudo apt update
 sudo apt install mongodb-org -y
 sudo systemctl start mongod.service
 sudo systemctl enable mongod