require_relative 'lib/be_a_dragon/version'

Gem::Specification.new do |spec|
  spec.name          = "be_a_dragon"
  spec.version       = BeADragon::VERSION
  spec.authors       = ["saitama1899"]
  spec.email         = ["eric.lorien92@gmail.com"]

  spec.summary       = %q{Motivational sentences to help you code in peace.}
  spec.description   = %q{Your code does not work as it should? You have only one spec to correct and you want to sleep?
    Does Rubocop mistreat you? Need some extra motivational push to finish that f*** code? This is your gem.}
  spec.homepage      = "https://github.com/saitama1899/be_a_dragon"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/saitama1899/be_a_dragon"
  spec.metadata["changelog_uri"] = "https://github.com/saitama1899/be_a_dragon/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
