class LyricQuestion < ApplicationRecord
  belongs_to :game
  belongs_to :lyrics
end
