#! /bin/zsh -f --extended-glob --glob-assign
set -- ${@:-$ATOM_HOME}

pushd ${NODE_PATH/.app*/}.app/Contents/Resources

if (($#))
then [ -d $1 ] && set -- $1/{atom,file}.icns(N)
  png=*/resources/*.png

  # Backup existing icon/s
  for i (*.icns $png) [ -f $i.zip ] || zip -jmq $i{.zip,}

  cp $@ $PWD
  sips -s format png $1:t --out $png
else
  # Restore original icon/s
  for i (**/*.zip) unzip -oqd $i:h $i && rm $_
fi
