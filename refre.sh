#! /usr/bin/env zsh -f
unsetopt nomatch

cd $NODE_PATH:h:h

if (($#))
then [ -d $1 ] && set -- $1/{atom,file}.icns

	png=(*/resources/*.png)

	# Backup existing icon/s
	for i (*.icns $png) [ -f $i.zip ] || zip -jmq $i{.zip,}

	cp $@ . #:l

	sips -s format png $1:t -o $png
else
	# Restore original icon/s
	for i (**/*.zip) unzip -oqd $i:h $i && rm $_
fi
