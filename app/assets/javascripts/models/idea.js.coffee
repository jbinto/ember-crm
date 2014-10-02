App.Idea = DS.Model.extend
  ideaShort: DS.attr('string')
  difficulty: DS.attr('string', defaultValue: 'pick random number 1-9')
  benefits: DS.attr('string')
  notes: DS.attr('string')
  status: DS.attr('string')
  ideaWithBenefits: ( ->
    # hooray for string interpolation. Still ugly as sin though.
    "#{@get('ideaShort')} (because #{@get('benefits')})"
  ).property('ideaShort', 'benefits')


# n.b. `reopenClass` is not the same as `reopen`
# Ruby equiv: @@STATUSES = [...]
App.Idea.reopenClass
  STATUSES: ['new', 'old', 'in progress', 'bad', 'complete']
  valid: (fields) ->
    fields.ideaShort and fields.benefits

