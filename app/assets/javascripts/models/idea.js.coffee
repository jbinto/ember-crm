App.Idea = DS.Model.extend
  ideaShort: DS.attr('string')
  difficulty: DS.attr('string', defaultValue: 'pick random number 1-9')
  benefits: DS.attr('string')
  notes: DS.attr('string')

