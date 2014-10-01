App.IdeaNewRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'fields', {}
