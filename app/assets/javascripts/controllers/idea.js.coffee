App.IdeaController = Ember.ObjectController.extend

  # The 'click' event from the template will look inside actions for
  # a handler.
  actions:
    saveChanges: -> @get('model').save() if @get('model.isDirty')

