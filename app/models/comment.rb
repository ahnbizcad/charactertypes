class Comment < ActiveRecord::Base
	belongs_to :users, 
		counter_cache: true
	belongs_to :characters, 
		counter_cache: true,
		dependent: :destroy

	has_many :declarations
	#has_many :users, through: :declarations
	#has_many :


	validates :text, 
		presence: true, 
		length: {minimum: 20}

end
