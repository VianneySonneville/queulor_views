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
      <%= tag.div(**default_html_attributes) do %>
        <%= tag.button(@title, class: "queulor_accordion__button", data: { action: "click->queulor-views--queulor-accordion#toggle" }) %>
        <%= tag.div(content, class: "queulor_accordion__content", data: { "queulor-views--queulor-accordion-target": "content" }) %>
      <% end %>
    ERB

    private

    def default_html_attributes
      {
        "class": "queulor_accordion",
        "data-controller": "queulor-views--queulor-accordion",
        "data-queulor-views--queulor-accordion-display-class": "show",
        "data-action": ""
      }
    end
  end
end
