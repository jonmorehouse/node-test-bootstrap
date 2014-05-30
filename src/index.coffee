path = require 'path'
c = require 'multi-config'

# print out all call stack errors - this helps a ton!
process.on 'uncaughtException', (err) ->
  console.error err.stack

# initialize global variables for helping out with tests
global.p = console.log

# base directory - this needs to be resolved via git in the future 
global.baseDirectory = path.resolve path.join __dirname, ".."

# initialize the project require loaders
require "./require"

module.exports = 
  runner: require "./runner"
  tasks: require "./tasks"


