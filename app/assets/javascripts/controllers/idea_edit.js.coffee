App.IdeaEditController = Ember.ObjectController.extend
  actions:
    saveChanges: ->
      # instead of using `oldThis`, can use Coffeescript
      # fat arrow => which will implictly rebind `this`
      oldThis = @
      @get('model').save().then ->
        oldThis.transitionToRoute('idea')

    cancel: ->
      @get('model').rollback()
      @transitionToRoute('idea')