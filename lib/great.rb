# require "great/version"
require 'active_support/inflector'
require 'active_record'

module Great
	autoload :FullTextIndexer,         'great/full_text_indexer'
  autoload :PostgresModuleInstaller, 'great/postgres_module_installer'
  autoload :TrigramInstaller,        'great/trigram_installer'
  autoload :MigrationGenerator,      'great/migration_generator'
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
		def self.searchable_language
    	'english'
  	end

  private
  def searchable_columns
    columns.select {|column| [:string, :text].include? column.type }.map(&:name)
  end
  def quoted_language
    @quoted_language ||= connection.quote(searchable_language)
  end
  def searchable_language
    Great.searchable_language
  end

	end
end
