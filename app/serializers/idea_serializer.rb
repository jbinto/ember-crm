class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :idea_short, :difficulty, :benefits, :notes
end

