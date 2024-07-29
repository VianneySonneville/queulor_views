# frozen_string_literal

require "view_component"
require "rails"
require "queulor_views/cpns/accordion/section_cpn"

module QueulorViews::Cpns
  class AccordionCpn < QueulorViews::Base
    renders_many :sections, ->(title: nil, summary: nil, expanded: false, &block) do
      QueulorViews::Cpns::Accordion::SectionCpn.new title:, summary:, expanded:, &block
    end

    def initialize(html_attributes: { foo: :bar })
      super(html_attributes:)
    end

    erb_template <<-ERB
      <%= tag.div(@html_attributes) { safe_join sections } %>
    ERB
  end
end