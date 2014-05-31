{system} = require "./runner"
r = require "./runner"

build = ->
  system "coffee -c -o js lib"

nodeunit = (_path) ->
  
  _path ?= baseDirectory
  r.nodeunit _path

jasmine = (_path) ->
  
  _path ?= baseDirectory
  r.jasmine _path

module.exports = 
  build: build
  jasmine: jasmine
  nodeunit: nodeunit

