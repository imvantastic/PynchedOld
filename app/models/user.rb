class User < ActiveRecord::Base
   #down cast casing before saving
   before_save { self.email = email.downcase }
   #check to make sure it's not empty or null
   validates :firstName,  presence: true, length: { maximum: 50 }
   validates :lastName, presence: true, length: { maximum: 50 }
   #define constant by using caps
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: ( case_sensitive: false }
   has_secure_password
   #validates :password, length: { minimum: 6 }
   validates :password, :presence =>true, :confirmation =>true
   validates_confirmation_of :password
end
