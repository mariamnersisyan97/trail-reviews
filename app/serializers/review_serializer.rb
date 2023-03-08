class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :trail_id, :user_id
  

  # Relations
  belongs_to :trail
  belongs_to :user
  has_one :trail 
  has_one :user
end
