# Universal DeBlur-DeBloat Script v1.0.3 by Lokifish Marz (mod. UncleDan beta2)
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
 # cp -f mnt/sdcard/1deblur_lite/UncleDan/SystemUI.apk /system/app/SystemUI.apk
 # mv /system/app/SystemUI.odex /system/app/SystemUI.odex.bak
 mv /system/build.prop /system/build.prop.bak
 cp -f mnt/sdcard/1deblur_lite/UncleDan/build.prop /system/build.prop

#Blur Common
cd /system/app
 mv AdService.apk AdService.apk.bak
 mv AdService.odex AdService.odex.bak
 mv BlurHome.apk BlurHome.apk.bak
 mv BlurHome.odex BlurHome.odex.bak
 mv BlurHome2.apk BlurHome2.apk.bak
 mv BlurHome2.odex BlurHome2.odex.bak
 mv BlurAlarmClock.apk BlurAlarmClock.apk.bak
 mv BlurAlarmClock.odex BlurAlarmClock.odex.bak
 mv BlurTasks.apk BlurTasks.apk.bak
 mv BlurTasks.odex BlurTasks.odex.bak
 mv BlurUpdater.apk BlurUpdater.apk.bak
 mv BlurUpdater.odex BlurUpdater.odex.bak
 mv BookmarksWidget.apk BookmarksWidget.apk.bak
 mv BookmarksWidget.odex BookmarksWidget.odex.bak
 mv BooksPhone.apk BooksPhone.apk.bak
 mv CalendarSync.apk CalendarSync.apk.bak
 mv CalendarSync.odex CalendarSync.odex.bak
 mv ClockWidget.apk ClockWidget.apk.bak
 mv ClockWidget.odex ClockWidget.odex.bak
 mv DataCollection.apk DataCollection.apk.bak
 mv DataCollection.odex DataCollection.odex.bak
 mv DataCollectorProvider.apk DataCollectorProvider.apk.bak
 mv DataCollectorProvider.odex DataCollectorProvider.odex.bak
 mv DataCollectorService.apk DataCollectorService.apk.bak
 mv DataCollectorService.odex DataCollectorService.odex.bak
 mv DLNA.apk DLNA.apk.bak
 mv DLNA.odex DLNA.odex.bak
 mv DlnaSystemService.apk DlnaSystemService.apk.bak
 mv DlnaSystemService.odex DlnaSystemService.odex.bak
 mv FriendFeed.apk FriendFeed.apk.bak
 mv FriendFeed.odex FriendFeed.odex.bak
 mv GlobalUnplug.apk GlobalUnplug.apk.bak
 mv GlobalUnplug.odex GlobalUnplug.odex.bak
 mv HTMLViewer.apk HTMLViewer.apk.bak
 mv HTMLViewer.odex HTMLViewer.odex.bak
 mv HelpCenter.apk HelpCenter.apk.bak
 mv HelpCenter.odex HelpCenter.odex.bak
 mv InPocketService.apk InPocketService.apk.bak
 mv InPocketService.odex InPocketService.odex.bak
 mv MagicSmokeWallpapers.apk MagicSmokeWallpapers.apk.bak
 mv MagicSmokeWallpapers.odex MagicSmokeWallpapers.odex.bak
 mv MediaSync.apk MediaSync.apk.bak
 mv MediaSync.odex MediaSync.odex.bak
 mv MotoPhonePortal.apk MotoPhonePortal.apk.bak
 mv MotoPhonePortal.odex MotoPhonePortal.odex.bak
 mv MessagesWidget.apk MessagesWidget.apk.bak
 mv MessagesWidget.odex MessagesWidget.odex.bak
 mv NewsWidget.apk NewsWidget.apk.bak
 mv NewsWidget.odex NewsWidget.odex.bak
 mv PhotoWidget.apk PhotoWidget.apk.bak
 mv PhotoWidget.odex PhotoWidget.odex.bak
 mv Protips.apk Protips.apk.bak
 mv Protips.odex Protips.odex.bak
 mv QuickContactWidget.apk QuickContactWidget.apk.bak
 mv QuickContactWidget.odex QuickContactWidget.odex.bak
 mv Quickoffice-Motorola.apk Quickoffice-Motorola.apk.bak
 mv SocialMessaging.apk SocialMessaging.apk.bak
 mv SocialMessaging.odex SocialMessaging.odex.bak
 mv SocialShare.apk SocialShare.apk.bak
 mv SocialShare.odex SocialShare.odex.bak
 mv StatusWidget.apk StatusWidget.apk.bak
 mv StatusWidget.odex StatusWidget.odex.bak
 mv SuggestionsProvider.apk SuggestionsProvider.apk.bak
 mv SuggestionsProvider.odex SuggestionsProvider.odex.bak
 mv SuggestionsRuleCheckerCore.apk SuggestionsRuleCheckerCore.apk.bak
 mv SuggestionsRuleCheckerCore.odex SuggestionsRuleCheckerCore.odex.bak
 mv SuggestionsServiceScheduler.apk SuggestionsServiceScheduler.apk.bak
 mv SuggestionsServiceScheduler.odex SuggestionsServiceScheduler.odex.bak
 mv Swype.apk Swype.apk.bak
 mv ToggleWidgets.apk ToggleWidgets.apk.bak
 mv ToggleWidgets.odex ToggleWidgets.odex.bak
 mv UniversalInbox.apk UniversalInbox.apk.bak
 mv UniversalInbox.odex UniversalInbox.odex.bak
 mv WeatherWidget.apk WeatherWidget.apk.bak
 mv WeatherWidget.odex WeatherWidget.odex.bak
 mv WorldClockWidget.apk WorldClockWidget.apk.bak
 mv WorldClockWidget.odex WorldClockWidget.odex.bak
 mv W_Installer.apk W_Installer.apk.bak
 
#AT&T Bloat
 mv androidlauncher2.1-61x612010_06_11t15_49.apk androidlauncher2.1-61x612010_06_11t15_49.apk.bak
 mv ATT-P11_PROD.apk ATT-P11_PROD.apk.bak
 mv attmaps20-1094.apk attmaps20-1094.apk.bak
 mv ATT_Radio_2.1.07.apk ATT_Radio_2.1.07.apk.bak
 mv WISPr_v41.apk WISPr_v41.apk.bak
 
#Sprint Bloat
 mv SprintMobileWallet.apk SprintMobileWallet.apk.bak
 mv SprintZone.apk SprintZone.apk.bak
 mv Sprint_Worldwide.apk Sprint_Worldwide.apk.bak

#TMobile Bloat
 
#Verizon Bloat
 mv amazonmp3_1.8.32_signed_zipligned.apk amazonmp3_1.8.32_signed_zipligned.apk.bak
 mv Blockbuster.apk Blockbuster.apk.bak
 mv BlurUpdater_VZW.apk BlurUpdater_VZW.apk.bak
 mv CityID.apk CityID.apk.bak
 mv Kindle-OEM-2.0.5.103970165-20110202.apk Kindle-OEM-2.0.5.103970165-20110202.apk.bak
 mv MyVerizon.apk MyVerizon.apk.bak
 mv Skype_mobile.live.apk Skype_mobile.live.apk.bak
 mv VCast.apk VCast.apk.bak
 
#GSM RAZR
 mv Bejeweled2_signed_submission.apk Bejeweled2_signed_submission.apk.bak
 
#Vodafone-Italy Bloat
 mv 7Digital.apk 7Digital.apk.bak
 mv CardioTrainerStub.apk CardioTrainerStub.apk.bak
 mv ZinioMagazineReader.apk ZinioMagazineReader.apk.bak
 mv ZinioReaderSettings.apk ZinioReaderSettings.apk.bak

 mkdir /mnt/sdcard/Removed_Apps
busybox mv *.bak /mnt/sdcard/Removed_Apps
busybox mount -o remount,ro /system
busybox mount -o remount,rw /data
cd /data/app

#Sprint Bloat
 mv com.aloqa.me.client_modules.android_sl-1.apk com.aloqa.me.client_modules.android_sl-1.apk.bak
 mv com.mspot.android.music.mspotradiosprint-1.apk com.mspot.android.music.mspotradiosprint-1.apk.bak
 mv com.handson.h2o.nascar09-1.apk com.handson.h2o.nascar09-1.apk.bak
 mv com.sprint.android.musicplus2033-1.apk com.sprint.android.musicplus2033-1.apk.bak
 mv com.mobitv.client.sprinttvng-1.apk com.mobitv.client.sprinttvng-1.apk.bak
 mv com.google.android.apps.books-1.apk com.google.android.apps.books-1.apk.bak
 mv com.telenav.app.android.sprint-1.apk com.telenav.app.android.sprint-1.apk.bak
 
#Tmobile Bloat

#GSM RAZR Bloat

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