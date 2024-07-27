require 'rails/generators'

module QueulorViews
  class JsGenerator < Rails::Generators::Base
    def install
      Dir.glob("#{__dir__}/assets/javascripts/*.js") do |file|
        copy_file file, "app/javascript/controllers/queulor_views/#{file.split("/").last}"
      end
    end

    def self.source_root
      File.join(File.dirname(__FILE__), '..', '..', 'assets', 'javascripts')
    end
  end
end