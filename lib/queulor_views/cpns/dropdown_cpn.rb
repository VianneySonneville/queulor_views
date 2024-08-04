# frozen_string_literal: true

require "view_component"
require "rails"

module QueulorViews::Cpns
  class DropdownCpn < ViewComponent::Base
    attr_reader :button_name, :items, :opts

    def initialize(button_name, items: [], html_attributes: {})
      super
      @button_name = button_name
      @items = items
      @opts = opts
    end

    erb_template <<-ERB
      <%= tag.div class: "queulor_dropdown" data: { controller: "queulor-views--queulor-dropdown", queulor-views--queulor-dropdown-display-class: "show"}, **html_attributes do %>
        <%= tag.button "\#{button_name}", class: "queulor_dropdown__button \#{animation}", data: { action: "\#{action}" } %>
        <%= tag.div class: "queulor_dropdown__content", data: { queulor-views--queulor-dropdown-target: "content" } do %>
          <% items.each do |item| %>
            <%= line_for item %>
          <% end %>
        <% end %>
      <% end %>
    ERB

    private

    def line_for(item)
      content_tag(:a, item[:label], href: item[:link])
    end

    def animation
      case opts[:animation]
      when :hover
        "queulor_dropdown__animate_hover"
      else
        "queulor_dropdown__animate_click"
      end
    end

    def action
      case opts[:animation]
      when :hover
        ""
      else
        "click->queulor-views--queulor-dropdown#toggle"
      end
    end
  end
end