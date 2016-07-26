errify     = require "errify"


delay = (ms, fn) -> setTimeout fn, ms

example = (truthy = false, callback) ->
  ideally = errify callback
  await delay 2, ideally defer()
  i = 1
  await delay 2, ideally defer()
  i = 2
  if truthy
    await delay 2, ideally defer()
  i = 3
  callback null, true


module.exports = example
