class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest

  # Relations
  has_many :trails
  has_many :reviews
end
