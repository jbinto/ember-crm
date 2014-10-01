# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ->
  @resource 'ideas', path: '/', ->
    @resource 'idea', path: '/ideas/:id', ->
      @route 'edit'
      @route 'new'
