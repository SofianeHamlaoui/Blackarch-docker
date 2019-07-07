#!/bin/bash

which docker > /dev/null 2>&1
	if [ "$?" -eq "0" ]; then
	echo [✔]::[Docker]: installation found!;
else
echo [x]::[warning]:So you want to install docker image without docker ? ;
echo ""
echo [!]::[please wait]: Installing Docker ..  ;
pacman -S docker docker-compose --noconfirm
fi
docker-compose run --rm --service-ports blackarch
