# frozen_string_literal

require "view_component"
require "rails"

module QueulorViews::Cpns::Accordion
  class SectionCpn < QueulorViews::Base
    attr_reader :title, :expanded

    renders_one :title

    def initialize(title:, expanded:, html_attributes: {})
      @title = title
      @expanded = expanded

      super(html_attributes:)
    end

    erb_template <<-ERB
      <%= tag.div(**@html_attributes) do %>
        <%= tag.button @title, class: "queulor_accordion__button" %>
        <%= tag.div content, class: "queulor_accordion__content" %>
      <% end %>
    ERB
  end
end
