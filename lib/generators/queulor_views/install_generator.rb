require 'rails/generators'

module QueulorViews
  class InstallGenerator < Rails::Generators::Base
    def install
      Dir.glob("#{__dir__}/assets/javascripts/*.js") do |file|
        copy_file file, "app/javascript/controllers/queulor_views/#{file.split("/").last}"
      end

      Dir.glob("#{__dir__}/assets/stylesheets/*.css") do |file|
        copy_file file, "app/assets/stylesheets/queulor_views/#{file.split("/").last}"
      end
    end
  end
end