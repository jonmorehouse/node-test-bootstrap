_hash = {}

start = (key) ->
  _hash[key] = process.hrtime()

stop = (key) ->

  hrend = process.hrtime _hash[key]
  console.info "key time (hr): %ds %dms", hrend[0], hrend[1]/1000000

module.exports = 
  start: start
  stop: stop


