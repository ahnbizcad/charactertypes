class Declaration < ActiveRecord::Base
	belongs_to :users, counter_cache: true
	belongs_to :characters, counter_cache: true
	belongs_to :personalities, counter_cache: true
	#	belongs_to :comments

	#declaring requires commenting, giving a reason why.
	# but comments is a table that joins users and characterss.
	# and declaration is a table that joins personalities, users, characters, and comments.
	# which association should be used to associate comments and declarations?
	
	validates :user, :character, :personality, :comment, presence: true
	validates_uniqueness_of :user, :scope => [:character, :personality]
end
