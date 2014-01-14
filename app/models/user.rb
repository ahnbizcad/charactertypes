class User < ActiveRecord::Base
	has_one :personality
	# personality for himself... how to differentiate?

	has_many :declarations
	has_many :characters, through: :declarations
	has_one :personality, through: :declarations
	# personality for character... how to differentiate?

	has_many :comments
	has_many :characters, through: :comments

	validates_uniqueness_of :user_name
	validates :user_name, length: {in 4..20}
	validates :password, length: {minimum: 6}
	validates :email, format: {with: /\w_@\w_.\w*/}
end
