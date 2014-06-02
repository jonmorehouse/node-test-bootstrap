path = require 'path'

requirePath = (projectDir, _path) ->
  path.join baseDirectory, projectDir, _path

_require = (projectDir, _path) ->
  require requirePath projectDir, _path


global.fixtureRequire = (_path) ->
  _require "test/fixtures", _path

global.fixturePath = (_path) ->
  requirePath "test/fixtures", _path

for dir in ["js", "lib", "src", "test"]
  # call a closure to capture the value of dir and "hardcode" it into the function
  global["#{dir}Require"] = do (dir = dir) ->
    return (_path) ->
      return _require dir, _path



      
