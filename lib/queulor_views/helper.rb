# frozen_string_literal: true

require "queulor_views/cpns/test_component"

module QueulorViews
  class Helper
    class << self
      def test
        QueulorViews::Cpns::TestComponent.new
      end
    end
  end
end
