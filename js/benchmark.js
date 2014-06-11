// Generated by CoffeeScript 1.7.1
(function() {
  var start, stop, _hash;

  _hash = {};

  start = function(key) {
    return _hash[key] = process.hrtime();
  };

  stop = function(key) {
    var hrend;
    hrend = process.hrtime(_hash[key]);
    return console.info("" + key + " time (hr): %ds %dms", hrend[0], hrend[1] / 1000000);
  };

  module.exports = {
    start: start,
    stop: stop
  };

}).call(this);