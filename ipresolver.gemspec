# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ipresolver/version"

Gem::Specification.new do |spec|
  spec.name          = "ipresolver"
  spec.version       = Ipresolver::VERSION
  spec.authors       = ["Albert Bertram"]
  spec.email         = ["bertrama@umich.edu"]

  spec.summary       = 'ODO: Write a short summary, because RubyGems requires one.'
  spec.description   = 'ODO: Write a longer description or delete this line.'
  spec.homepage      = "ODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "ODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'actionpack'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'rack'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rerun'
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rubocop'
end
