# Node Test Bootstrap
> A Collection of utilities and methods that I use in node.js projects (dev dependencies only) 

## Usage

This module tries to make development easier by making it quicker to get up and running with node tdd environments.

~~~ coffee-script
# Cakefile
testBootstrap = require "test-bootstrap"

task "test", "Test" ->
  testBootstrap.tasks.nodeunit()

~~~

~~~ coffee-script
# some_test.coffee
testBootstrap = require "test-bootstrap"

# various global helpers available here
# this app also sources test/bootstrap.coffee and imports its exports into the test-bootstrap namespace
~~~

## System dependencies

~~~ sh
$ sudo apt-get install -y cmake 

$ brew install cmake
~~~
