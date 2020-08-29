#!/bin/bash
alaramOn=false;
BASEDIR=$(dirname "$0");
while true; do
    if $(pmset -g batt | head -n 1 | grep -q "Battery"); then
        blueutil --power 0;
        osascript -e 'set volume output volume 100';
        osascript -e 'set volume output muted false';
        say "Get your hands off";
        afplay -v 50 $BASEDIR/alarm.aiff -t 2;
        alaramOn=true;
    else
        alaramOn=false;
    fi
  if $alaramOn; then
    sleep 2;
  else
    sleep 1;
  fi
done
