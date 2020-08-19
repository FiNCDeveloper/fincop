lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fincop/version'

Gem::Specification.new do |spec|
  spec.name          = 'fincop'
  spec.version       = Fincop::VERSION
  spec.authors       = ['FiNC, Inc']
  spec.email         = ['finc@finc.com']

  spec.summary       = 'FinCop is a RuboCop configuration gem.'
  spec.description   = 'FinCop is a RuboCop configuration gem.'
  spec.homepage      = 'https://github.com/FiNCDeveloper/fincop'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '>= 0.89.0'
  spec.add_dependency 'rubocop-performance', '>= 1.5.2'
  spec.add_dependency 'rubocop-rails', '>= 2.4.1'
  spec.add_dependency 'rubocop-rspec', '>= 1.37.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
