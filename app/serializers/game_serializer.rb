class GameSerializer < ActiveModel::Serializer
  attributes :id

  has_many :high_scores, :dependent => :destroy
  has_many :users, through: :high_scores
  has_many :lyric_questions, :dependent => :destroy
  has_many :lyrics_answers, through: :lyric_questions
end
