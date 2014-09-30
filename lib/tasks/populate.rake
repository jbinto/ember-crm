namespace :db do
  task populate: :environment do

    Idea.destroy_all

    def random_difficulty
      [
        'trivial',
        'few hours',
        'weekend project',
        'tough',
        'anything can be done with lots of money',
        'no clue'
      ].sample
    end

    def random_benefits
      [
        'learning experience',
        'useful to others',
        'really cool',
        'new hotness that pays well',
        'none really'
      ].sample
    end

    20.times do
      Idea.create(
        idea_short: Faker::Company.catch_phrase,
        difficulty: random_difficulty,
        benefits: random_benefits,
        notes: Faker::HipsterIpsum.words(50).join(' ')
      )
    end


  end
end