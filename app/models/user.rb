class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, 
    length: { minimum: 10, allow_blank: true }
  validates :email, presence: true,
   format: { with: /\S+@\S+/ },
    uniqueness: { case_sensitive: false }

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end
end
