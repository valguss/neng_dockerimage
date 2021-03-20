 # NENG Docker composer
 
 ## Description
 
 This is a self contained docker composer setup that will create a NENG coin wallet and run the cheetah cpu miner. This is intended for people on an unsupported system like apple mac Big Sur.
 
 ## Requirments
 
 Docker
 
 ## Quick setup
 
 Download this repo to your computer and bring it up by running the following in this folder:
 
 ```
 docker-composer up -d
 ```
 
 This will install an ubuntu image and then install the neng coin wallet CLI and setup the CPU miner. If it is your first run or you haven't run for awhile, the wallet will need to sync up with the rest of the network.
 
 I've also set up a down script which will backup your wallet to your hosts folder where these files are. This will happen when you bring the image down using:
 
 ```
 docker-compose stop
 ```
 
 You can exec into the container by running
 
 ```
 docker-compose exec neng sh
 ```
 
 Once in you can run commands on the wallet like:
 
 ```
 nengcoind help
 ```
