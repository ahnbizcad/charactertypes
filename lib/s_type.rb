module Type
	@@count

	def set_type (label)
		if label.length==4
			label.downcase!
			if (label[0]==i || label[0]==e) && (label[0]==n || label[0]==s) && (label[0]==t || label[0]==f) && (label[0]==j || label[0]==p)
				@type = label
				if @type == "esfj" or @type == "isfp" or @type == "intj" or @type == "entp"
					@quadra = "Alpha"
				elsif @type ==  or @type ==  or @type ==  or @type == 				
					@quadra = "Beta"
				elsif @type == "entj" or @type == "intp" or @type == "isfj" or @type == "esfp"
					@quadra = "Gamma"
				elsif @type ==  or @type ==  or @type ==  or @type == 					
					@quadra = "Delta"
				end
				@type[0..2].upcase!
				@type.gsub!(@type[3], @type[3].downcase!)
			end

		else
			self.finalize
		end

		set_cog_funcs(label)
	end

	attr_accessor :type
	attr_reader :quadra

	private 
	def set_cog_funcs(label)


		@cog_funcs[] = 
	end

end



class Character
	
	include 'Type'

	def initialize (name,show,type)
		@name = name
		@show = show
		set_type (type)
	end

	attr_reader :name
	attr_reader :show

end



module ESFj 
	def set_funcs
		@funcs = ["Fe","Si","Ne","Ti",

		]
	end
	attr_accessor :funcs
end