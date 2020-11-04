class Artist < ApplicationRecord
    has_many :tracks, :dependent => :destroy
    has_many :albums, through: :tracks
end
