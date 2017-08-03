# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shimatomo_training/version'

Gem::Specification.new do |spec|
  spec.name          = "shimatomo_training"
  spec.version       = ShimatomoTraining::VERSION
  spec.authors       = ["Tomoki Shimada"]
  spec.email         = ["tomoki.shimada0927@gmail.com"]

  spec.summary       = 'my first gem'
  spec.description   = 'longer description'
  spec.homepage      = 'https://github.com/tomozip'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
