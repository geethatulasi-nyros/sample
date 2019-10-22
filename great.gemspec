
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "great/version"

Gem::Specification.new do |spec|
  spec.name          = "great"
  spec.version       = Great::VERSION
  spec.authors       = ["geethatulasi-nyros"]
  spec.email         = ["geethatulasi.nyros@gmail.com"]

  spec.summary       = %q{summary}
  spec.description   = %q{description}
  spec.homepage      = "https://github.com/geethatulasi-nyros/sample"
  spec.license       = "MIT"
  spec.files         = ['lib/great.rb']

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel", "~>5.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec","~>3.7"
  spec.add_dependency "activesupport", "~> 5.0"
end
