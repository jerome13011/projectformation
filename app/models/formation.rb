class Formation < ApplicationRecord
	has_many :reviews, dependent: :destroy

 	validates :name, uniqueness: true, presence: true
 	validates :mail, presence: true	
end
