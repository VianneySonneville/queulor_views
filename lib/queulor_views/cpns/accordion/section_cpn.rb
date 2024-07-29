# frozen_string_literal

require "view_component"
require "rails"

module QueulorViews::Cpns::Accordion
  class SectionCpn < QueulorViews::Base
    attr_reader :title, :summary, :expanded

    renders_one :title
    renders_one :summary

    def initialize(title:, summary:, expanded:, html_attributes: {})
      @title = title
      @summary = summary
      @expanded = expanded

      super(html_attributes:)
    end

    erb_template <<-ERB
      <%= tag.div(@html_attributes) do %>
        coucou
      <% end %>
    ERB
  end
end