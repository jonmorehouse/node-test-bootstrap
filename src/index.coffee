path = require 'path'
sh = require "shelljs"

# print out all call stack errors - this helps a ton!
process.on 'uncaughtException', (err) ->
  console.error err.stack

# initialize global variables for helping out with tests
global.p = console.log

# set the base directory as the directory of the executing script
baseDirectory = sh.pwd()
# make sure to remove any trailing bins. May need to update this in the future ...
re = /\.*\/bin$/
global.baseDirectory = baseDirectory.split(re)[0]

# initialize the project require loaders
require "./require"

module.exports = 
  runner: require "./runner"
  tasks: require "./tasks"
  benchmark: require "./benchmark"

try
  bs = testRequire "bootstrap"
  for key,value of bs
    module.exports[key] = value
catch e


