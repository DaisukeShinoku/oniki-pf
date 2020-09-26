class User < ApplicationRecord

  before_save { email.downcase! }

  VALID_ACCOUNT_REGEX = /\A[0-9a-z_]{1,15}\z/i
  validates :account_id, presence: true, length: {in: 6..15}, format: { with: VALID_ACCOUNT_REGEX }, uniqueness: true

  validates :name, presence: true, length: { maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
          format: { with: VALID_EMAIL_REGEX },
          uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: {in: 6..15}, allow_nil: true
end
