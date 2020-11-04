class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :popularity, :explicit

  belongs_to :album
  belongs_to :artist
end

