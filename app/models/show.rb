class Show < ActiveRecord::Base
	has_many :characters

	validates :title, 
		:show_type, 
		presence: true
	validates :year, 
		:allow_blank => true, 
		numericality: {only_integers: true}
	validates_uniqueness_of :title, :scope => [:year, :show_type]

end
