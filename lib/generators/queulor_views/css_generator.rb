require 'rails/generators'

module QueulorViews
  class CssGenerator < Rails::Generators::Base
    def install
      Dir.glob("#{__dir__}/assets/stylesheets/*.css") do |file|
        copy_file file, "app/assets/stylesheets/queulor_views/#{file.split("/").last}"
      end
    end

    def self.source_root
      File.join(File.dirname(__FILE__), '..', '..', 'assets', 'stylesheets')
    end
  end
end