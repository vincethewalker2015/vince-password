class Password < ApplicationRecord
    before_action :authenticate_user!
    validates :name, presence: true
    validates :user_name, presence: true
    belongs_to :user
    
end