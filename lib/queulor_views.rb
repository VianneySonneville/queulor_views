# frozen_string_literal: true

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/generators")
loader.setup

# require "queulor_views/version"
# require "queulor_views/helpers"

module QueulorViews
  # ActionView::Base.include QueulorViews::Helpers
end
