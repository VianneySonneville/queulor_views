# frozen_string_literal

require "view_component"
require "rails"

module QueulorViews::Cpns::Accordion
  class SectionCpn < QueulorViews::Base
    attr_reader :title, :expanded

    renders_one :title

    def initialize(title:, expanded:, html_attributes: {})
      super(html_attributes:)
      @title = title
      @expanded = expanded
    end

    erb_template <<-ERB
      <%= tag.div(class: expanded ? "queulor_accordion show" : "queulor_accordion", data: { controller: :queulor_views__queulor_accordion, queulor_views__queulor_accordion_display_class: "show" }, **html_attributes) do %>
        <%= tag.button(@title, class: "queulor_accordion__button", data: { action: "click->queulor-views--queulor-accordion#toggle" }) %>
        <%= tag.div(content, class: "queulor_accordion__content", data: { "queulor-views--queulor-accordion-target": "content" }) %>
      <% end %>
    ERB
  end
end
