# frozen_string_literal: true

require_relative "lib/queulor_views/version"

Gem::Specification.new do |spec|
  spec.name = "queulor_views"
  spec.version = QueulorViews::VERSION
  spec.authors = ["vianney.sonneville"]
  spec.email = ["vianney.sonneville@unova.fr"]

  spec.summary = "View."

  spec.homepage = "https://rubygems.org/gems/queulor_views"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/VianneySonneville/queulor_views/issues",
    "changelog_uri" => "https://github.com/VianneySonneville/queulor_views/blob/main/CHANGELOG.md",
    "documentation_uri" => "https://github.com/VianneySonneville/queulor_views",
    "homepage_uri" => "https://github.com/VianneySonneville/queulor_views",
    "source_code_uri" => "https://github.com/VianneySonneville/queulor_views"
  }

  spec.license = "MIT"

  spec.files = Dir.glob("lib/**/*") + %w[README.md LICENSE.txt CHANGELOG.md]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.7"

  spec.add_dependency "view_component"
  spec.add_dependency "rails"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
  # gemspec
  spec.add_development_dependency "combustion", "~> 1.3"
end
