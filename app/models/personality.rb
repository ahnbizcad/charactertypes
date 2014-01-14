class Personality

	has_many :declarations

	validates :stype, uniqueness: {case_sensitive: false}
	# Probably not necessary. Leaving to practice and have a reference.
end
