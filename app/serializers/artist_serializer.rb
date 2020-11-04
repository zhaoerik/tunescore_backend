class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genres, :popularity, :image

  has_many :tracks
  has_many :albums, through: :tracks
end
