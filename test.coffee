class PteriDish

  constructor: ->
    @stems = []

  inject: (stem) ->
    @stems.push stem

  feed: (data) ->

    current = 0
    stems = @stems

    next = ->

      nextLayer = stems[current]
      current++

      if nextLayer?
        nextLayer data, next
      else
        console.dir data

    next()

dish = new PteriDish

dish.inject (data, next) ->
  data.x = 1
  next()

dish.inject (data, next) ->
  data.y = 2
  next()

dish.feed {}
