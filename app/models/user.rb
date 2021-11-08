class User < ApplicationRecord
    has_secure_password

   
    has_many :collections
    
  
    # validations
    validates_presence_of :username
    validates_presence_of :email
    validates_presence_of :password    
end
