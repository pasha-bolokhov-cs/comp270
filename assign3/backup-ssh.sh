#!/usr/bin/env sh

BASEDIR=/home/pasha.bolokhov/comp270/assign3

rsync -e "ssh -i /home/pasha.bolokhov/.ssh/backup" -avz --timeout=900 --delete --exclude-from=$BASEDIR/rsync.excludes bolokhov@204.174.60.77:to_backup/ /home/pasha.bolokhov/Backup/

