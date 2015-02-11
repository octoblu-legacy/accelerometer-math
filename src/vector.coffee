class Vector
  constructor: (@x,@y) ->

  magnitude:=>
    Math.sqrt (@x ** 2) + (@y ** 2)

  bearing:=>
    Math.atan @x / @y


module.exports = Vector
