# require "great/version"
require 'active_support/inflector'
module Great
	class Text
		def self.hi
			puts "hello"
		end
		def initialize
			puts "initialised"
		end
		def add(a,b)
			res = a.to_i + b.to_i
			res
		end
		def sub(a,b)
			res = a.to_i - b.to_i
			res
		end
		def self.search(data)
			if data.downcase == "geetha"
				'geetha'
			else
				"end"
			end
		end
		def self.pluralize(word)
			word.pluralize
		end
	end
end
