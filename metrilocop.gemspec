lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "metrilocop/version"

Gem::Specification.new do |gem|
  gem.name          = "metrilocop"
  gem.version       = Metrilocop::VERSION
  gem.authors       = ["Vasil Gochev"]
  gem.email         = ["vasil@metrilo.com"]

  gem.summary       = %q{A collection of Metrilo's linters}
  gem.homepage      = "https://github.com/Metrilo/metrilocop"
  gem.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gem.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  gem.bindir        = "bin"
  gem.executables   = "metrilocop"
  gem.version       = Metrilocop::VERSION
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 2.0"

  gem.add_dependency 'rubocop', '~> 0.62.0'
  gem.add_dependency 'rubocop-checkstyle_formatter'
  gem.add_dependency 'rubocop-rspec'
end
