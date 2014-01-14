class Picture < ActiveRecord::Base
	belongs_to :show
	belongs_to :character	
	belongs_to :user

	validates :show, :character, presence: true
end
