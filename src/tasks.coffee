{system} = require "./runner"

build = ->

  system "coffee -c -o js lib"


module.exports = 
  build: build


