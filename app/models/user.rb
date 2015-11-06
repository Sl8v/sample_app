class User < ActiveRecord::Base
	#before_save { self.email = email.downcase }
	before_save { email.downcase! }
	
	validates :name, presence: true, length: { minimum: 2, maximum: 50 }
	VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEXP },
									uniqueness: { case_sensitive: false }
									
	has_secure_password
	validates :password, length: { minimum: 6 }
end
