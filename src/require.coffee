path = require 'path'

_require = (projectDir, _path) ->

  p projectDir
  _p = path.join baseDirectory, projectDir, _path
  try
    require _p
  catch

global.fixtureRequire = (_path) ->
  return _require "test/fixtures", _path

for dir in ["js", "lib", "src", "test"]
  # call a closure to capture the value of dir and "hardcode" it into the function
  global["#{dir}Require"] = do (dir = dir) ->
    return (_path) ->
      return _require dir, _path



      
