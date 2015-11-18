#!/system/bin/sh
# "THE THING"
#Made by _Bon_Bon(@XDA)
#All parts of this MOD and all the code in it
#are protected by GNU GPL, version 3
#Copyright (C) 2015 Francisco Pulido Garces (_Bon_Bon)
#see <http://www.gnu.org/licenses/>


sed -i '/The_Tim/,/The_End_Of_Tim/d' $BuildProp
cat >> /init.rc <<EOF
#The_Tim background service created by --BonBon--
#
#DO NOT DELETE COMMENTS! IT WOULD BREAK UNINSTALL PROCESS
#
###############################
# Tims service notes
################################
# To restart Tims Service so it stays running, run Terminal Emulator and type...
# "su" and Enter.
# "start tim_service" and Enter.
#
# To stop the SuperCharger Service, type...
# "su" and Enter.
# "stop tim_service" and Enter.
#
service tim_service /system/bin/sh /system/bin/Tim
    class post-zygote_services
    user root
    group root
#
# The_End_Of_Tim Service Entries
EOF

backup OOM file as OomBackUp.txt
and ADj file as ADJBackUp.txt