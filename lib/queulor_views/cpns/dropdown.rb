module QueulorViews::Cpns
  class Dropdown < ViewComponent::Base
    attr_reader :button_name, :items

    def initialize(button_name: :nil, items: [])
      super
      @button_name = button_name
      @items = items
    end

    erb_template <<-ERB
      <div class="queulor_dropdown" data-controller="queulor_dropdown">
        <button class="queulor_dropdown__button">
          <% items.each do |item| %>
            <%= line_for item %>
          <% end %>
        </button>
      </div>
    ERB

    private

    def line_for(item)
      "<a href='#{item[:link]}'>#{item[:label]}</a>"
    end
  end
end