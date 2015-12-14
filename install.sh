#!/usr/bin/env bash
mkdir -pv /private/etc/cups/ppd/
curl -o /private/etc/cups/ppd/ADSMAN_CRPW001_Utilities___Pitt_St.ppd https://raw.githubusercontent.com/danijhd/HDA_Printers_OSX/master/ADSMAN_CRPW001_Utilities___Pitt_St.ppd
/usr/sbin/lpadmin -p "Utilities Pitt St" -E -v lpd://192.168.204.231 -P /private/etc/cups/ppd/ADSMAN_CRPW001_Utilities___Pitt_St.ppd -D "Pitt St Utilities Room"
exit
