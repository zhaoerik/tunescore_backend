class Album < ApplicationRecord
    has_many :tracks, :dependent => :destroy
    has_many :artists, through: :tracks
    has_many :reviews, :dependent => :destroy
    has_many :users, through: :reviews
end
