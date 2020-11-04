class LyricAnswerSerializer < ActiveModel::Serializer
  attributes :id, :lyric

  belongs_to :album
  has_many :lyric_questions, :dependent => :destroy
  has_many :games, through: :lyric_questions
end
