# frozen_string_literal: true

require_relative "lib/rubodiff_support/version"

Gem::Specification.new do |spec|
  spec.name          = "rubodiff_support"
  spec.version       = RubodiffSupport::VERSION
  spec.authors       = ["Yoshihiro Kimura"]
  spec.email         = ["kimuraysp@gmail.com"]

  spec.summary       = "It will give you a diff when upgrading the rubocop version."
  spec.description   = "It will give you a diff when upgrading the rubocop version."
  spec.homepage      = "https://github.com/kimuray/rubodiff_support"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kimuray/rubodiff_support"
  spec.metadata["changelog_uri"] = "https://github.com/kimuray/rubodiff_support/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "nokogiri", "~> 1.11"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.7"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
