# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "menud/version"

Gem::Specification.new do |spec|
  spec.name          = "menud"
  spec.version       = Menud::VERSION
  spec.authors       = ["alu0100761948"]
  spec.email         = ["alu0100761948@ull.edu.es"]

  spec.summary       = %q{Práctica de laboratorio}
  spec.description   = %q{Se realizaran pruebas con Spec.}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1819/tdd-AlejandrDiaz"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://rubygems.org"
    
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-1819/tdd-AlejandrDiaz"
    spec.metadata["changelog_uri"] = "https://github.com/ULL-ESIT-LPP-1819/tdd-AlejandrDiaz"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"

end
