class User < ActiveRecord::Base
   #down cast casing before saving
   before_save { self.email = email.downcase }
   #check to make sure it's not empty or null
   validates :firstName,  presence: true, length: { maximum: 50 }
   validates :lastName, presence: true, length: { maximum: 50 }
   #define constant by using caps
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: ( case_sensitive: false }
end