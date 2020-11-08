class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :email, :image, :badge

  has_many :reviews
  has_many :albums, through: :reviews
end
