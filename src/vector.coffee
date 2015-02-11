class Vector
  constructor: (@x,@y) ->

  bearing:=>
    Math.atan @x / @y

  magnitude: =>
    Math.sqrt (@x ** 2) + (@y ** 2) 

  velocity:=>
    result = @magnitude()
    return -result if @y < 0
    return result



module.exports = Vector
