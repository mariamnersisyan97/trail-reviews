class User < ApplicationRecord
    has_secure_password

    # Relations
    has_many :trails, through: :reviews
    has_many :reviews

    # Validations
    validates :username, presence: true, uniqueness: true
end
