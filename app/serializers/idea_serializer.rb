class IdeaSerializer < ActiveModel::IdeaSerializer
  attributes :id, :idea_short, :difficulty, :benefits, :notes
end

