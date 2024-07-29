# frozen_string_literal

require "view_component"
require "rails"

module QueulorViews::Cpns
  class Accordion < QueulorViews::Base
    renders_many :sections, ->(title: nil, summary: nil, expanded: false, &block) do
      QueulorViews::Cpns::Accordion::Section.new title:, summary:, expanded:, &block
    end

    def initialize(html_attributes: {})
      super(html_attributes:)
    end

    def call
      tag.div { safe_join sections }
    end
  end
end