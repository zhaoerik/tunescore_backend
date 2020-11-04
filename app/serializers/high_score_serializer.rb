class HighScoreSerializer < ActiveModel::Serializer
  attributes :id, :score, :badge

  belongs_to :user
  belongs_to :game
end
