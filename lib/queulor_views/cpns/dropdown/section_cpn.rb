# frozen_string_literal

require "view_component"
require "rails"

module QueulorViews::Cpns::Dropdown
  class SectionCpn < ViewComponent::Base
    attr_reader :label, :link, html_attributes:

    def initialize(label:, link:, html_attributes: {})
      super
      @label = label
      @link = link
      @html_attributes = html_attributes
    end

    erb_template <<-ERB
      <%= tag.a label, href: link, **html_attributes %>
    ERB
  end
end
