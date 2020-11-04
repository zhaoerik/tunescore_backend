class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating
  
  belongs_to :album
  belongs_to :user
end
