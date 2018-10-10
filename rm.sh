#!/sbin/ash

mkdir /tmp/vendor /tmp/system
mount /dev/block/sde21 /tmp/system
mount /dev/block/sdf6 /tmp/vendor

rm -r /tmp/system/app/FastDriver
rm -r /tmp/system/app/OPFilemanager
rm -r /tmp/system/app/MCS
rm -r /tmp/system/app/Exchange2
rm -r /tmp/system/app/appUpgrader
rm -r /tmp/system/app/nearme
rm -r /tmp/system/app/baidushurufa
rm -r /tmp/system/app/OpenWnn
rm -r /tmp/system/app/PhotosOnline
rm -r /tmp/system/app/QQBrowser
rm -r /tmp/system/app/webview
rm -r /tmp/system/app/PicoTts
rm -r /tmp/system/priv-app/AutoNaviFLP
rm -r /tmp/system/priv-app/OnePlusGallery
rm -r /tmp/system/priv-app/OPMarket
rm -r /tmp/system/tts
rm -r /tmp/system/reserve

rm -r /tmp/vendor/etc/apps
sed -i '/devices/'d /tmp/vendor/etc/fstab.qcom