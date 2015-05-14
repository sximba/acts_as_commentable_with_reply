# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "acts_as_commentable_with_reply"
  spec.version       = "1.0.0"
  spec.authors       = ["Lungelo Ximba"]
  spec.email         = ["lungeloximba@gmail.com"]

  spec.summary       = %q{Rails gem that provides comment functionality with one-level nesting of comment replies}
  spec.description   = %q{Rails gem that provides comment functionality with one-level nesting of comment replies (based on acts_as_commentable)}
  spec.homepage      = %q{https://github.com/sximba/acts_as_commentable_with_reply}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.has_rdoc      = false
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.license       = 'MIT'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
