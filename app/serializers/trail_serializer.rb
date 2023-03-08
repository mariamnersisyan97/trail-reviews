class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :distance

  # Relations
  has_many :reviews
end
