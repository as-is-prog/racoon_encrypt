# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'racoon_encrypt/version'

Gem::Specification.new do |spec|
  spec.name          = "racoon_encrypt"
  spec.version       = RacoonEncrypt::VERSION
  spec.authors       = ["as-is-prog"]
  spec.email         = ["as-is-prog@outlook.jp"]

  spec.summary       = "某実習で作成した、たぬき暗号を生成するgem"
  spec.description   = "たぬき暗号化及び、たぬき暗号の復号を行えるクラスを提供します。cが一個足りないのはご愛嬌。"
  spec.homepage      = "http://rubygems.org/gems/racoon_encrypt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
