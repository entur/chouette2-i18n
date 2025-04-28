# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chouette2-i18n/version'

Gem::Specification.new do |spec|
  spec.name          = "chouette2-i18n"
  spec.version       = Chouette2I18n::VERSION
  spec.authors       = ["Bruno Perles"]
  spec.email         = ["bruno@atnos.com"]

  spec.summary       = 'Translations for chouette2'
  spec.description   = 'Translations for chouette2'
  spec.homepage      = 'https://github.com/brunto/chouette2-i18n'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "i18n"
  spec.add_runtime_dependency "railties"
  spec.add_development_dependency "bundler", "~> 2.4"
  spec.add_development_dependency "rake", "~> 13.2"
  spec.add_development_dependency "localeapp"
end
