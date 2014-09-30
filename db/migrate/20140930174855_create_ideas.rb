class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :idea_short
      t.string :difficulty
      t.string :benefits
      t.text :notes
    end
  end
end
