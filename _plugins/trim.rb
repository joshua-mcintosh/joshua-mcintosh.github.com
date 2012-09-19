module TrimFilter
	def trim(input, value)
		value |= nil
		input.chomp value 
	end

	Liquid::Template.register_filter self
end
