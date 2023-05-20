lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'miyabi/version'

Gem::Specification.new do |spec|
  spec.name          = 'miyabi'
  spec.version       = Miyabi::VERSION
  spec.authors       = ['Hironori Akaishi']
  spec.email         = ['ah.gm3622@gmail.com']

  spec.summary       = 'kana,hira,kanji formatter'
  spec.description   = 'Format Japanese characters'
  spec.homepage      = ''
  spec.license       = 'MIT'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.0'
  spec.add_dependency 'nokogiri', '~> 1.14'
  spec.add_development_dependency 'rspec', '~> 3.12'
end
