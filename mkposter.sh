#!/usr/bin/env bash

TITLE="\"DAMs : Introduction and Possibilities\""
SUBTITLE=""
DATE="22 June 2019"
SUFFIX="th"
TIME="(09:30 AM to 12:30 PM)"
TO="to"
VENUE="EntriHQ, Padamughal"
PLACE="Kakkanad"

# Add title
convert -font ./bodoni/BOD_I.TTF -pointsize 192 -gravity North -draw "text 450,825 '$TITLE'" pwl_blank.jpg output.jpg

# Add Subtitle
# convert -font ./bodoni/BOD_I.TTF -pointsize 162 -gravity North -draw "text 420,1001 '$SUBTITLE'" output.jpg output.jpg

# Add Date
convert -font ./bodoni/BodoniMT.ttf -pointsize 152 -gravity North -draw "text 402,1610 '$DATE'" output.jpg output.jpg

# Add time
convert -font ./bodoni/BodoniMT.ttf -pointsize 100 -gravity North -draw "text 402,1780 '$TIME'" output.jpg output.jpg

# Add Venue
convert -font ./bodoni/BodoniMT.ttf -pointsize 125 -gravity North -draw "text 392,1980 '$VENUE'" output.jpg output.jpg

# Add Place
convert -font ./bodoni/BodoniMT.ttf -pointsize 120 -gravity North -draw "text 392,2100 '$PLACE'" output.jpg pwl_poster.jpg

# Remove Copy
rm output.jpg
