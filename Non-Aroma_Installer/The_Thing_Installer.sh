#!/system/bin/sh
# "THE THING"
#Made by _Bon_Bon(@XDA)
#All parts of this MOD and all the code in it
#are protected by GNU GPL, version 3
#Copyright (C) 2015 Francisco Pulido Garces (_Bon_Bon)
#see <http://www.gnu.org/licenses/>
echo "Setting up mod files"
rm -f /system/bin/The_Thing
rm -f /system/bin/Tim
rm -f /system/etc/init.d/01_Bootish
rm -fr /data/The_Thing
mv 
	#
	#Files & Permissions
	ui_print("Extracting new files and setting permissions");
	package_extract_dir("data", "/data");
	package_extract_dir("system", "/system");
	#
	#android 4.0
	if getprop("ro.build.version.sdk")=="14" || getprop("ro.build.version.sdk")=="15" then
		ui_print("Installing for Android 4.0");
		package_extract_file("SQlite/A4.0/lib/libncurses.so", "/system/lib/libncurses.so");
		package_extract_file("SQlite/A4.0/xbin/sqlite3", "/system/xbin/sqlite3");
	endif;
	#
	#android 4.1
	if getprop("ro.build.version.sdk")=="16" then
		ui_print("Installing for Android 4.1");
		package_extract_file("SQlite/A4.1/lib/libncurses.so", "/system/lib/libncurses.so");
		package_extract_file("SQlite/A4.1/xbin/sqlite3", "/system/xbin/sqlite3");
	endif;
	#
	#android 4.2
	if getprop("ro.build.version.sdk")=="17" then
		ui_print("Installing for Android 4.2");
		package_extract_file("SQlite/A4.2/lib/libncurses.so", "/system/lib/libncurses.so");
		package_extract_file("SQlite/A4.2/xbin/sqlite3", "/system/xbin/sqlite3");
	endif;
	#
	#android 4.3
	if getprop("ro.build.version.sdk")=="18" then
		ui_print("Installing for Android 4.3");
		package_extract_file("SQlite/A4.3/lib/libncurses.so", "/system/lib/libncurses.so");
		package_extract_file("SQlite/A4.3/xbin/sqlite3", "/system/xbin/sqlite3");
	endif;
	#
	#android 4.4
	if getprop("ro.build.version.sdk")=="19" || getprop("ro.build.version.sdk")=="20" then
		ui_print("Installing for Android 4.4");
		package_extract_file("SQlite/A4.4/lib/libncurses.so", "/system/lib/libncurses.so");
		package_extract_file("SQlite/A4.4/xbin/sqlite3", "/system/xbin/sqlite3");
	endif;
	#
	#android 5.x
	if getprop("ro.build.version.sdk")=="21" || getprop("ro.build.version.sdk")=="22" then
		ui_print("Installing for Android 5.0 & 5.1");
		package_extract_file("SQlite/A5.x/lib/libncurses.so", "/system/lib/libncurses.so");
		package_extract_file("SQlite/A5.x/xbin/sqlite3", "/system/xbin/sqlite3");
	endif;
	set_progress(0.5);
	set_perm_recursive(0, 2000, 0755, 0755, "/data/The_Thing");
	#
	#Binaries
	set_perm(0, 0, 06755, "/system/xbin/zipalign");
	set_perm(0, 0, 0755, "/system/xbin/sqlite3");
	set_perm(0, 0, 0644, "/system/lib/libncurses.so");
	set_perm(0, 0, 0755, "/system/bin/The_Thing");
	set_perm(0, 0, 0755, "/system/bin/Tim");
	set_perm(0, 0, 0755, "/system/etc/init.d/01_Bootish");
	if getprop("ro.ro.product.cpu.abi")=="x86" then
		package_extract_file("Busybox/busybox_x86","/data/The_Thing/system/busybox");
		set_perm(0, 0, 0755, "/data/The_Thing/system/busybox");
	elif getprop("ro.ro.product.cpu.abi")=="mips"
		package_extract_file("Busybox/busybox_mips","/data/The_Thing/system/busybox");
		set_perm(0, 0, 0755, "/data/The_Thing/system/busybox");
	else
		package_extract_file("Busybox/busybox_arm","/data/The_Thing/system/busybox");
		set_perm(0, 0, 0755, "/data/The_Thing/system/busybox");
	endif;
else


backup OOM file as OomBackUp.txt
and ADj file as ADJBackUp.txt