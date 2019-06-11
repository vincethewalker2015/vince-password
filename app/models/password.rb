class Password < ApplicationRecord
    validates :name, presence: true
    validates :user_name, presence: true
    
end