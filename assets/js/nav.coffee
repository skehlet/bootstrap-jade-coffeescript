$(document).ready ->
  
  AppRouter = Backbone.Router.extend
    routes:
      home: 'home'
      foo: 'foo'
      bar: 'bar'
    home: ->
      $('#mynav li').removeClass 'active'
      $('#nav_home').addClass 'active'
    foo: ->
      $('#mynav li').removeClass 'active'
      $('#nav_foo').addClass 'active'
    bar: ->
      $('#mynav li').removeClass 'active'
      $('#nav_bar').addClass 'active'
  
  router = new AppRouter()
#  router.on 'all', (blah) ->
#    console.log(blah)
  Backbone.history.start()
#  console.log('Backbone initialized...')