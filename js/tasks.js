// Generated by CoffeeScript 1.7.1
(function() {
  var build, jasmine, nodeunit, path, r, system, testDirectory;

  system = require("./runner").system;

  path = require('path');

  r = require("./runner");

  testDirectory = path.join(baseDirectory, "test");

  build = function() {
    return system("coffee -c -o js lib");
  };

  nodeunit = function(_path) {
    if (_path == null) {
      _path = testDirectory;
    }
    return r.nodeunit(_path);
  };

  jasmine = function(_path) {
    if (_path == null) {
      _path = testDirectory;
    }
    return r.jasmine(_path);
  };

  module.exports = {
    build: build,
    jasmine: jasmine,
    nodeunit: nodeunit
  };

}).call(this);
