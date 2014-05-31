path = require 'path'

_require = (projectDir, _path) ->
  require path.join baseDirectory, projectDir, _path

global.fixtureRequire = (_path) ->
  return _require "test/fixtures", _path

for dir in ["js", "lib", "src", "test"]
  # call a closure to capture the value of dir and "hardcode" it into the function
  global["#{dir}Require"] = do (dir = dir) ->
    return (_path) ->
      return _require dir, _path



      
