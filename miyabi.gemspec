# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "miyabi/version"

Gem::Specification.new do |spec|
  spec.name          = "miyabi"
  spec.version       = Miyabi::VERSION
  spec.authors       = ["Hironori Akaishi"]
  spec.email         = ["ah.gm3622@gmail.com"]

  spec.summary       = %q{kana,hira,kanji formatter}
  spec.description   = %q{Format Japanese characters}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "mechanize", "2.7.5"
end
