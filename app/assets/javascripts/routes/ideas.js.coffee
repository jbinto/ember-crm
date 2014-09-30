App.IdeasRoute = Ember.Route.extend

  model: -> @store.find 'idea'