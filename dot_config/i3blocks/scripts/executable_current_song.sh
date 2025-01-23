#!/bin/bash

# Fetch the current song details
SONG=$(cmus-remote -Q 2>/dev/null | grep '^tag title ' | cut -d ' ' -f 3-)
ARTIST=$(cmus-remote -Q 2>/dev/null | grep '^tag artist ' | cut -d ' ' -f 3-)

# Output the song info
if [ -n "$SONG" ] && [ -n "$ARTIST" ]; then
    echo "🎵$ARTIST - $SONG"
else
    echo ""
fi

