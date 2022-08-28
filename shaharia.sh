#!/bin/bash
echo -e "_________ .__                       .___             .__                                    
\_   ___ \|  |__ _____    ____    __| _/___________  |  |__ _____    ___________            
/    \  \/|  |  \\__  \  /    \  / __ |\_  __ \__  \ |  |  \\__  \  /  ___/\__  \    ______ 
\     \___|   Y  \/ __ \|   |  \/ /_/ | |  | \// __ \|   Y  \/ __ \_\___ \  / __ \_ /_____/ 
 \______  /___|  (____  /___|  /\____ | |__|  (____  /___|  (____  /____  >(____  /         
        \/     \/     \/     \/      \/            \/     \/     \/     \/      \/          
                                                                                        "
web=$1
echo $OF
if [ $web == "-h" ]
then
	echo "Usage: ./shaharia website.com"
else
	./subdomainer -t $web -f true
	cd $web
	cd $(date +"%m-%d-%Y")
	cat all.txt | gauplus -subs -b png,jpg,gif,jpeg,swf,woff,gif,svg -o allUrls.txt ; cat allUrls.txt | httpx -sc 200,403 -o liveallurls.txt
fi
