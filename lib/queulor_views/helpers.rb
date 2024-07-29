# frozen_string_literal: true

require "queulor_views/base"
require "queulor_views/cpns/dropdown"
require "queulor_views/cpns/accordion"
require "queulor_views/cpns/accordion/section"

module QueulorViews
  module Helpers
    def accordion(sections: [], html_attributes: { foo: :bar })
      QueulorViews::Cpns::Accordion.new(html_attributes:) do |cpn|
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
