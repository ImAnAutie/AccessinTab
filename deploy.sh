#change to BT phonegap project_id
project_id=3120297


cd /home/gregory/AccessinTab
build_number=$(($(cat version)+1))
echo $build_number > version
read -p "The build number for this build is: $build_number"

#nano /home/gregory/AccessinTab/www/js/config.js
nano /home/gregory/AccessinTab/config.xml
/home/gregory/AccessinTab/updatedepends.sh
git add --all .
git commit

git_pushed=0

while [ $git_pushed -eq 0 ];do
	read -p "Do you want to push changes to git? (y/n):" yn
	if [ $yn == "y" ];then
		echo "Pushing to git"
		git push
		if [ $? -eq 0 ];then
			git_pushed=1
			date
			echo "Commit: "$(git rev-parse HEAD)
			php ~/phonegap_buildbot/index.php
			echo "Dont forget to update the sheet"
		else
			echo "Failed to push to git :("
		fi
	else
		echo "*** Aborting-Not pushing. ***"
		exit
	fi
done
