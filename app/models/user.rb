class User < ApplicationRecord
  has_secure_password
  has_many :messages

  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
end
