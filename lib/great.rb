# require "great/version"

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
	end
end
