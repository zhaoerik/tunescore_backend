class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :popularity, :image, :release_date

  has_many :tracks
  has_many :artists, through: :tracks
  has_many :reviews
  has_many :users, through: :reviews
end
