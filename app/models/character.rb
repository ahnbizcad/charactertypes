class Character < ActiveRecord::Base
	belongs_to :show, 
		counter_cache: true

	has_many :declarations
	has_many :users, through: :declarations
	#
	#has_many :personalities, through: :declarations

	has_many :comments
	has_many :users, through: :comments

	validates :name, presence: true
	validates_uniqueness_of :name
	validates :show_id, presence: true
	#Take :show, and compare it to an existing show. Also compare it with existing character in that show. Set as ID...?

end
