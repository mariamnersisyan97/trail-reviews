class Trail < ApplicationRecord
    # Relations
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    # Validations
    validates :image_url, presence: true
    validates :description, presence: true
    validates :distance, presence: true
    validates :name, presence: true

end
