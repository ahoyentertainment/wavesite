class User < ActiveRecord::Base
    attr_accessible :name, :email, :first_name, :last_name, :birthday
    before_save { self.email = email.downcase }
     
    validates :name, presence: true, length: {maximum: 15},
	uniqueness: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, format: {VALID_EMAIL_REGEX},
	uniqueness: {case_sensitive: false}
    validates :first_name, presence: true, length: {maximum: 20}
    validates :last_name, presence: true, length: {maximum: 25}
    validates :birthday, presence: true
    has_secure_password
    validates :password, length: {minimum: 10}
end
