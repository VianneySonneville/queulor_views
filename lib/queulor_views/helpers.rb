# frozen_string_literal: true

require "queulor_views/cpns/dropdown"

module QueulorViews
  module Helpers
    def dropdown(button_name:, items:)
      QueulorViews::Cpns::Dropdown.new button_name:, items:
    end
  end
end
