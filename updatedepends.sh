firebase_version="5.8.2"
cd /home/gregory/AccessinTab
echo "Updating Bugsnag.JS"
wget https://d2wy8f7a9ursnm.cloudfront.net/v4/bugsnag.min.js -O /home/gregory/AccessinTab/www/js/lib/bugsnag.js
echo "Updating Firebase app (core firebase)"
wget https://www.gstatic.com/firebasejs/$firebase_version/firebase-app.js -O /home/gregory/AccessinTab/www/js/lib/firebase-app.js
echo "Updating Firebase auth"
wget https://www.gstatic.com/firebasejs/$firebase_version/firebase-auth.js -O /home/gregory/AccessinTab/www/js/lib/firebase-auth.js
echo "Updating Firebase Firestore"
get https://www.gstatic.com/firebasejs/$firebase_version/firebase-firestore.js -O /home/gregory/AccessinTab/www/js/lib/firebase-firestore.js
