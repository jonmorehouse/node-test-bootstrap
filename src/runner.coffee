nodeunit = require 'nodeunit'
{spawn, exec} = require 'child_process'
{print} = require 'sys'

# run a system command in the current directory
systemRunner = (commandString) ->
  command = exec commandString
  command.stdout.on 'data', (data) ->
    print data.toString()
  command.stderr.on 'data', (data) ->
    print data.toString()

# opt to not use splat so as to allow for simplicity between this and the jasmine runner
nodeunitRunner = (_path) ->
  command = "nodeunit #{_path}"
  systemRunner command

# run jasmine specs
# alternatively can run with the runner command
jasmineRunner = (_path) ->
  command = "jasmine-node --coffee --verbose #{_path}"
  systemRunner command

mochaRunner = (_path) ->
  command = "mocha -R dot --no-exit --compilers coffee:coffee-script/register #{_path}"
  systemRunner command

module.exports = 
  system: systemRunner
  jasmine: jasmineRunner
  nodeunit: nodeunitRunner
  mocha: mochaRunner

