lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise/jwt/cookie/version'

Gem::Specification.new do |spec|
  spec.name          = "devise-jwt-cookie"
  spec.version       = Devise::JWT::Cookie::VERSION
  spec.authors       = ["Niels van der Zanden"]
  spec.email         = ["niels@pharynx.nl"]

  spec.summary       = %q{Cookie-based JWT authentication for devise}
  spec.description   = %q{Cookie-based JWT authentication for devise with configurable token revocation strategies}
  spec.homepage      = "https://github.com/scarhand/devise-jwt-cookie"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'devise-jwt', '~> 0.12.1'
  spec.add_dependency 'dry-auto_inject', '~> 1.0.1'
  spec.add_dependency 'dry-configurable', '1.2.0'

  spec.add_development_dependency 'bundler', '~> 2.6', '>= 2.6.1'
  spec.add_development_dependency 'rake', '~> 13.2', '>= 13.2.1'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'pry-byebug', '~> 3.10', '>= 3.10.1'
  # Needed to test the rails fixture application
  spec.add_development_dependency 'rails', '~> 8.0', '>= 8.0.1'
  spec.add_development_dependency 'sqlite3', '~> 2.4', '>= 2.4.1'
  spec.add_development_dependency 'rspec-rails', '~> 7.1'
  # Test reporting
  spec.add_development_dependency 'simplecov', '~> 0.13.0'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0', '>= 1.0.9'
end
