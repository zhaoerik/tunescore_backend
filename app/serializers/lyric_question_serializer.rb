class LyricQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question
  
  has_one :game
  has_one :lyrics
end
