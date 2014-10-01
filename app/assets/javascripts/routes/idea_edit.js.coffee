App.IdeaEditRoute = Ember.Route.extend
  # Recall, these are Route Hooks
  #   http://emberjs.com/api/classes/Ember.Route.html#method_activate
  #   http://emberjs.com/api/classes/Ember.Route.html#method_deactivate

  # Don't forget, this is the IdeaEditRoute reaching into the IdeaController and setting
  # a property on it. It's cross-controller logic.
  activate:   -> @controllerFor('idea').set 'isEditing', true
  deactivate: -> @controllerFor('idea').set 'isEditing', false