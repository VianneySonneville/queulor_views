module QueulorViews
  class Engine < ::Rails::Engine
    initializer "queulor_views.initialize" do |app|
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, QueulorViews::Helpers
      end
    end
  end
end