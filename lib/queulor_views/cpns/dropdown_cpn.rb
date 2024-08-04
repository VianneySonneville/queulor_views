# frozen_string_literal: true

module QueulorViews::Cpns
  class DropdownCpn < QueulorViews::Base
    attr_reader :label, :items

    renders_many :sections, lambda { |label: "", link: "#", html_attributes: {} |
      QueulorViews::Cpns::Dropdown::SectionCpn.new label:, link:, html_attributes:
    }

    def initialize(label: "", html_attributes: {})
      super(html_attributes:)
      @label = label
    end

    erb_template <<-ERB
      <%= tag.div class: "queulor_dropdown", data: { controller: "queulor-views--queulor-dropdown", queulor_views__queulor_dropdown_display_class: "show"}, **html_attributes do %>
        <%= tag.button "\#{label}", class: "queulor_dropdown__button \#{animation}", data: { action: "\#{action}" } %>
        <%= tag.div class: "queulor_dropdown__content", data: { queulor_views__queulor_dropdown_target: "content" } do %>
          <%= safe_join sections %>
        <% end %>
      <% end %>
    ERB

    private

    def animation
      case html_attributes[:animation]
      when :hover
        "queulor_dropdown__animate_hover"
      else
        "queulor_dropdown__animate_click"
      end
    end

    def action
      case html_attributes[:animation]
      when :hover
        ""
      else
        "click->queulor-views--queulor-dropdown#toggle"
      end
    end
  end
end