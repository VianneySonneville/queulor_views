# frozen_string_literal

require "view_component"
require "rails"

module QueulorViews::Cpns
  class Accordion < QueulorViews::Base
    renders_many :sections, ->(title: nil, summary: nil, expanded: false, &block) do
      QueulorViews::Cpns::Accordion::Section.new title:, summary:, expanded:, &block
    end

    def initialize(html_attributes: { foo: :bar })
      puts "*******************************"
      puts html_attributes
      super(html_attributes:)
      puts "######################################"
      puts html_attributes
      puts "######################################"
      puts @html_attributes
    end

    def call
      tag.div(html_attributes) { safe_join sections }
    end
  end
end