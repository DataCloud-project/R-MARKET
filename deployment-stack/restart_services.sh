#!/bin/bash

DIRS='kafka result sms-teeservices wp-core marketplace'
for DIR in $DIRS;do
	read -p "Restart $DIR ? [y/N]" FOO
	if [ "$FOO" == "y" ] ;then
		cd "$DIR"
		docker-compose down
		sleep 2
		docker-compose up -d
		cd ..
	else
		echo "Skipping..."
	fi
done

echo "http://127.0.0.1:3000/workerpoolorders?chainId=65535&workerpool=0x6Bc12F42Bb7421bB03b4654CC39342cCA6C9e899"
echo "http://127.0.0.1:30000/"

