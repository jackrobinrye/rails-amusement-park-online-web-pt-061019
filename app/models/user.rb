class User < ActiveRecord::Base
    has_secure_password

    has_many :rides
    has_many :attractions, through: :rides

    def mood_is 
        if self.happiness > self.nausea
            "happy"
        else 
            "unhappy"
        end 
    end 
    
end
