{system} = require "./runner"
path = require 'path'
r = require "./runner"
testDirectory = path.join baseDirectory, "test"

build = ->
  system "coffee -c -o js lib"

nodeunit = (_path) ->
  
  _path ?= testDirectory
  r.nodeunit _path

jasmine = (_path) ->
  
  _path ?= testDirectory
  r.jasmine _path

module.exports = 
  build: build
  jasmine: jasmine
  nodeunit: nodeunit

