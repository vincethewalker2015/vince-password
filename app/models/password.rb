class Password < ApplicationRecord
    validates :name, presence: true
    validates :user_name, presence: true
    belongs_to :user
    
end