# frozen_string_literal: true

require "view_component"
require "rails"

module QueulorViews::Cpns
  class Dropdown < ViewComponent::Base
    attr_reader :button_name, :items, :opts

    def initialize(button_name: :nil, items: [], **opts)
      super
      @button_name = button_name
      @items = items
      @opts = opts
    end

    erb_template <<-ERB
      <div class="queulor_dropdown" data-controller="queulor-views--queulor-dropdown">
        <button class="queulor_dropdown__button" data-action="click->queulor-views--queulor-dropdown#toggle"><%= button_name %></button>
        <div class="queulor_dropdown__content" data-queulor-views--queulor-dropdown-target="content" data-queulor-views--queulor-dropdown-display-class="<%= opts[:data_class] || 'show' %>">
          <% items.each do |item| %>
            <%= line_for item %>
          <% end %>
        </div>
      </div>
    ERB

    private

    def line_for(item)
      "<a href='#{item[:link]}'>#{item[:label]}</a>".html_safe
    end
  end
end