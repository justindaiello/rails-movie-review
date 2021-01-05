class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true

  validates :password, length: { minimum: 8, allow_blank: true }

  validates :email, format: { with: /\S+@\S+/ },
                    uniqueness: { case_sensitive: false }
end