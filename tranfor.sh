#! /bin/bash

#Extention of pictures to transfer 
PICS=*.png
DB=*.sql

#Locations
USB_PIC_PATH=/media/team3637/3881-89F3/teams/
LOCAL_PIC_PATH=/var/lib/webapps/ScoutingApp/resources/teams/
BACKUP_PIC_PATH=/home/team3637/pictures/
USB_DB_PATH=/media/team3637/3881-89F3/
LOCAL_DB_PATH=/home/team3637/
BACKUP_DB_PATH=/home/team3637/dbbackup/

if [ "$1" = 'scout' ]; then
    cp $USB_PIC_PATH/$PICS $LOCAL_PIC_PATH
	cp $USB_PIC_PATH/$PICS $BACKUP_PIC_PATH
    echo "Copied pictures from usb drive"
	if [ -e $USB_DB_PATH/$DB ]; then
	rm $USB_DB_PATH/$DB
	fi
	mysql -u team3637 -p SELECT * FROM matches INTO OUTFILE '$USB_DB_PATH/matches'; SELECT * FROM schedule INTO OUTFILE '$USB_DB_PATH/schedule';
elif [ "$1" = 'pit' ]; then
    cp $LOCAL_PIC_PATH/$PICS $USB_PIC_PATH
    echo "Copied from local pictures folder"
elif [ "$1" = 'restore' ]; then
	rm $LOCAL_PIC_PATH/$PICS
	cp $BACKUP_PIC_PATH $LOCAL_PIC_PATH/$PICS
else
    echo "Usage: $0 [scout|pit|restore]"
fi