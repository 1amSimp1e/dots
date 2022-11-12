#!/bin/bash

DND_LOCK_FILE="$HOME/.cache/dnd-lock.lock"
LOCK_FILE="$HOME/.cache/eww-notif-popup.lock"
EWW_BIN="$HOME/.local/bin/eww"

finish() {
	${EWW_BIN} update noti=false; sleep 0.075
	${EWW_BIN} close notification-popup
	rm -f ${LOCK_FILE}
}

# Run eww daemon if not running
if [[ ! `pidof eww` ]]; then
	${EWW_BIN} daemon
	sleep 1
else
	if [[ -f "$LOCK_FILE" ]]; then
		sleep 0.275 && ${EWW_BIN} update has_another_notif=true && canberra-gtk-play -i message-new-instant
	fi

	if [[ ! -f "$DND_LOCK_FILE" ]]; then
		KILLED=false
		for pid in $(pidof -x openEwwPopup.sh); do
			if [ $pid != $$ ]; then
				kill -9 $pid
				KILLED=true
			fi
		done >/dev/null

		if ! $KILLED; then
			sleep 0.5
			${EWW_BIN} update noti=true
			${EWW_BIN} open notification-popup
			canberra-gtk-play -i message
			touch ${LOCK_FILE}
		fi

		# ${EWW_BIN} update has_another_notif=true
		sleep 5
		finish
		unset KILLED
		${EWW_BIN} update has_another_notif=false
	fi
fi
