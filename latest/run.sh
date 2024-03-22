#!/usr/bin/env ysh
var SCRIPT_DIR = $(cd "$_this_dir" { pwd })

cd $SCRIPT_DIR {
  var tag = $(cat ../tag.txt)
  docker run -it "demurgos/node:${tag}"
}
