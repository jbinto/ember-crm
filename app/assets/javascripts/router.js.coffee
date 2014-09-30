# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'
  rootURL: '/'

# I bungled the CoffeeScript. Thinking vanilla JS is the way to go now.
App.Router.map ->
  @resource 'ideas', path: '/'