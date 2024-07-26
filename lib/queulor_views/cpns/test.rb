# frozen_string_literal: true

module QueulorViews::Cpns
  class Test < ViewComponent::Base
    attr_reader :foo

    def initialize(foo: :bar)
      @foo = foo
    end

    erb_template <<-ERB
      <div><%= foo %></div>
    ERB
  end
end