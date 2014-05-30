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
  reporter = nodeunit.reporters.verbose
  reporter.run [_path]
  
# run jasmine specs
# alternatively can run with the runner command
jasmineRunner = (_path) ->
  command = "jasmine-node"
  
module.exports = 
  system: systemRunner
  jasmine: jasmineRunner
  nodeunit: nodeunitRunner

