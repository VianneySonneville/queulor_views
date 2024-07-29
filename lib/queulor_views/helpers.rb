# frozen_string_literal: true

require "queulor_views/base"
require "queulor_views/cpns/dropdown_cpn"
require "queulor_views/cpns/accordion_cpn"
require "queulor_views/cpns/accordion/section_cpn"

module QueulorViews
  module Helpers
    def accordion(sections: [], html_attributes: { foo: :bar })
      QueulorViews::Cpns::AccordionCpn.new(html_attributes:) do |cpn|
        # sections.each do |section|
          cpn.with_section(
          title: "Two"
          )
        # end
      end
    end

    def dropdown(button_name, items:, **opts)
      QueulorViews::Cpns::DropdownCpn.new button_name, items:, opts:
    end
  end
end
