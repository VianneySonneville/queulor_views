# frozen_string_literal: true

require "view_component"
require "rails"

module QueulorViews::Cpns
  class DropdownCpn < ViewComponent::Base
    attr_reader :button_name, :items, :opts

    def initialize(button_name, items: [], opts: {})
      super
      @button_name = button_name
      @items = items
      @opts = opts
    end

    erb_template <<-ERB
      <div class="queulor_dropdown" data-controller="queulor-views--queulor-dropdown" data-queulor-views--queulor-dropdown-display-class="<%= opts[:data_class] || 'show' %>">
        <button class="queulor_dropdown__button <%= animation %>" data-action="<%= action %>"><%= button_name %></button>
        <div class="queulor_dropdown__content" data-queulor-views--queulor-dropdown-target="content">
          <% items.each do |item| %>
            <%= line_for item %>
          <% end %>
        </div>
      </div>
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