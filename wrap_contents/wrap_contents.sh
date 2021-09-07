#!/bin/bash
# the name for the file that needs to be wrapped
FILENAME=$1

# the name used to specify to header/footer
SPECIFIED=$2

# the name of the resulting file
RESULT=$3

# gets the correct name of the header
HEADERNAME="${SPECIFIED}_header.html"

# gets the correct name of the footer
FOOTERNAME="${SPECIFIED}_footer.html"

# copies the contents of the header, file and the footer into the result file
cat "$HEADERNAME" "$FILENAME" "$FOOTERNAME" > "$RESULT"


