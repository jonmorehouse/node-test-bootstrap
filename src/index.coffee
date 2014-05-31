path = require 'path'
c = require 'multi-config'

# print out all call stack errors - this helps a ton!
process.on 'uncaughtException', (err) ->
  console.error err.stack

# initialize global variables for helping out with tests
global.p = console.log

# set the base directory as the directory of the executing script
baseDirectory = path.dirname require.main.filename
# make sure to remove any trailing bins. May need to update this in the future ...
re = /\.*\/bin$/
global.baseDirectory = baseDirectory.split(re)[0]

# initialize the project require loaders
require "./require"

module.exports = 
  runner: require "./runner"
  tasks: require "./tasks"

bs = testRequire "bootstrap"
