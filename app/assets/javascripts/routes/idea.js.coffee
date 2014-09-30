App.IdeaRoute = Ember.Route.extend

  model: (params) -> @store.find 'idea', params.id
