# frozen_string_literal: true

require "view_component"
require "rails"

module QueulorViews
  attr_reader :html_attributes

  class Base < ViewComponent::Base
    def initialize(html_attributes: {})
      @html_attributes = html_attributes
    end
  end
end
