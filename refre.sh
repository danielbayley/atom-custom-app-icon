#! /usr/bin/env zsh -f

cd ~/Downloads/test/icns #$NODE_PATH:h:h

if (($#))
then [ -d $1 ] && set -- $1/{atom,file}.icns

	png=(*/resources/*.png)

	# Backup existing icon/s
	for i (*.icns $png) mv $i $i:r.bak.$i:e

	cp -f $@ . #:l

	sips -s format png $1:t -o $png
else
	# Restore original icon/s
	for i (**/*.bak.*) mv $i ${i/.bak/}
fi
