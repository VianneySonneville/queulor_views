# frozen_string_literal: true

require "view_component"
require "rails"

module QueulorViews::Cpns
  class TestComponent < ViewComponent::Base
    attr_reader :foo

    def initialize(foo: :bar)
      super
      @foo = foo
    end

    erb_template <<-ERB
      <div><%= foo %></div>
    ERB
  end
end
