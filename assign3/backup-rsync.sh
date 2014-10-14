#!/usr/bin/env sh

BASEDIR=/home/pasha.bolokhov/comp270/assign3

rsync -avz --timeout=900 --delete --password-file $BASEDIR/pw --exclude-from $BASEDIR/rsync.excludes --port 880 backup@204.174.60.77::to_backup /home/pasha.bolokhov/Backup/

