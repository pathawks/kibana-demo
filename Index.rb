require 'json'

class Index
	attr_writer :index
	attr_writer :type

	def initialize
		@index = "test-5"
		@type  = "test"
	end

	def to_json(*a)
		{
			"index" => {
				"_index" => @index,
				"_type"  => @type,
			}
		}.to_json(*a)
	end

	def to_s(*a)
		to_json(*a)
	end
end
