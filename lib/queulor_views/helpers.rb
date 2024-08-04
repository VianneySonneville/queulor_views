# frozen_string_literal: true

require "queulor_views/base"
require "queulor_views/cpns/dropdown_cpn"
require "queulor_views/cpns/dropdown/section_cpn"
require "queulor_views/cpns/accordion_cpn"
require "queulor_views/cpns/accordion/section_cpn"

module QueulorViews
  module Helpers
    def accordion(sections: [], **html_attributes, &block)
      capture do 
        render QueulorViews::Cpns::AccordionCpn.new(html_attributes:) do |cpn|
          block.call(cpn) if block.present?
        end
      end
    end

    def dropdown(label:, sections: [], **html_attributes, &block)
      capture do 
        render QueulorViews::Cpns::DropdownCpn.new(label:, html_attributes:) do |cpn|
          block.call(cpn) if block.present?
        end
      end
    end
  end
end
