path = require 'path'

_require = (projectDir, _path) ->
  return require path.join baseDirectory, projectDir, _path

global.fixtureRequire = (_path) ->
  return _require "test/fixtures", _path

for dir in ["js", "lib", "src"]
  global["#{dir}Require"] = (_path) ->
    return _require dir, _path
  

