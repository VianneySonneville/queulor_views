# frozen_string_literal: true

require "queulor_views/cpns/dropdown"

module QueulorViews
  module Helpers
    def accordion(sections: [], html_attributes: {})
      QueulorViews::Cpns::Dropdown.new(html_attributes:) do |cpn|
        sections.each do |section|
          cpn.with_section(
            title: section[:title],
            summary: section[:summary],
            expanded: section[:expanded],
            html_attributes: section[:html_attributes]
          )
        end
      end
    end

    def dropdown(button_name, items:, **opts)
      QueulorViews::Cpns::Dropdown.new button_name, items:, opts:
    end
  end
end
