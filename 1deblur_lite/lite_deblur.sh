# Universal DeBlur-DeBloat Script v1.0.3 by Lokifish Marz (mod. UncleDan beta1)
#!/system/bin/sh
#mount -o remount,rw /dev/block/mmcblk0p12 /system
busybox mount -o remount,rw /system
#Launcher and Apps
 cp mnt/sdcard/1deblur_lite/deskclock.apk /system/app/deskclock.apk
 cp mnt/sdcard/1deblur_lite/ADW_Launcher_1.3.6.apk /system/app/ADW_Launcher_1.3.6.apk
 cp mnt/sdcard/1deblur_lite/adw_settings.xml mnt/sdcard/adw_settings.xml
 cp mnt/sdcard/1deblur_lite/adw_launcher.db mnt/sdcard/adw_launcher.db
 
#Toggles and Tweaks
 # mv /system/app/SystemUI.apk /system/app/SystemUI.apk.bak
 # cp -f mnt/sdcard/1deblur_lite/Generic/SystemUI.apk /system/app/SystemUI.apk
 # mv /system/app/SystemUI.odex /system/app/SystemUI.odex.bak
 # mv /system/build.prop /system/build.prop.bak
 # cp -f mnt/sdcard/1deblur_lite/Generic/build.prop /system/build.prop

#Blur Common
cd /system/app
 
#Vodafone-Italy Bloat
 mv 7Digital.apk 7Digital.apk.bak
 mv CardioTrainerStub.apk CardioTrainerStub.apk.bak
 mv ZinioMagazineReader.apk ZinioMagazineReader.apk.bak
 mv ZinioReaderSettings.apk ZinioReaderSettings.apk.bak

busybox mv *.bak /mnt/sdcard/Removed_Apps
busybox mount -o remount,ro /data

#Fix Permissions
START=` busybox date +%s `
PKGLINES=`LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/system/lib pm list packages -f | busybox cut -d ':' -f2 `
TOTAL=` echo $PKGLINES | busybox wc -w `
CURRENT=0

echo
echo "Fixing permissions..."
echo

busybox mount -o remount,rw /system

for pkgline in ${PKGLINES}; do
	
	PKGNAME=` echo $pkgline | busybox cut -d '=' -f2 `
	CODEPATH=` echo $pkgline | busybox cut -d '=' -f1 `
	DATAPATH=/data/data/$PKGNAME
	PKGUID=` busybox grep $CODEPATH /data/system/packages.xml | 
		busybox sed 's%.*serId="\(.*\)".*%\1%' |  
		busybox cut -d '"' -f1 `
	
	CURRENT=$(($CURRENT+1))
	echo "(${CURRENT} of ${TOTAL}) ${PKGNAME}..."
	
	if busybox [ -e $CODEPATH ]; then

		APPDIR=` busybox dirname $CODEPATH `

		if busybox [ $APPDIR = /system/app ]; then
			busybox chown 0 $CODEPATH
			busybox chown :0 $CODEPATH
			busybox chmod 644 $CODEPATH
		elif busybox [ $APPDIR = /data/app ]; then
			busybox chown 1000 $CODEPATH
			busybox chown :1000 $CODEPATH
			busybox chmod 644 $CODEPATH
		elif busybox [ $APPDIR = /data/app-private ]; then
			busybox chown 1000 $CODEPATH
			busybox chown :$PKGUID $CODEPATH
			busybox chmod 640 $CODEPATH
		fi

		if busybox [ -d $DATAPATH ]; then

			busybox chmod 755 $DATAPATH
			busybox chown $PKGUID $DATAPATH
			busybox chown :$PKGUID $DATAPATH

			DIRS=` busybox find $DATAPATH -mindepth 1 -type d `

			for file in $DIRS; do

				PERM=755
				NEWUID=$PKGUID
				NEWGID=$PKGUID
				FNAME=` busybox basename $file `
				
				case $FNAME in
					lib)
						busybox chmod 755 $file
						NEWUID=1000
						NEWGID=1000
						PERM=755
					;;
					shared_prefs)
						busybox chmod 771 $file
						PERM=660					
					;;
					databases)
						busybox chmod 771 $file
						PERM=660
					;;
					cache)
						busybox chmod 771 $file
						PERM=600
					;;
					*)
						busybox chmod 771 $file
						PERM=771
					;;
				esac
				
				busybox chown $NEWUID $file
				busybox chown :$NEWGID $file

				busybox find $file -type f -maxdepth 1 ! -perm $PERM -exec busybox chmod $PERM {} ';'
				busybox find $file -type f -maxdepth 1 ! -user $NEWUID -exec busybox chown $NEWUID {} ';'
				busybox find $file -type f -maxdepth 1 ! -group $NEWGID -exec busybox chown :$NEWGID {} ';'

			done
		fi
	fi
done

busybox mount -o remount,ro /system
sync

STOP=` busybox date +%s `
RUNTIME=` busybox expr $STOP - $START`
HOURS=` busybox expr $RUNTIME / 3600`
REMAINDER=` busybox expr $RUNTIME % 3600`
MINS=` busybox expr $REMAINDER / 60`
SECS=` busybox expr $REMAINDER % 60`
RUNTIME=`busybox printf "%02d:%02d:%02d\n" "$HOURS" "$MINS" "$SECS"`

echo
echo
echo "Fix permissions complete! Runtime: ${RUNTIME}"
echo