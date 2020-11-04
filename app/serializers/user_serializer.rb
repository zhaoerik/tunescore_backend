class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :email, :image

  has_many :reviews
  has_many :albums, through: :reviews
end
