require 'rails/generators'

module QueulorViews
  class InstallGenerator < Rails::Generators::Base
    def install
      # Copy the unobtrusive JS file
      # copy_file('autocomplete-rails.js', 'public/javascripts/autocomplete-rails.js')
      puts "#{__dir__}/assets/javascripts/*.js"
      Dir.glob("#{__dir__}/assets/javascripts/*.js") do |file|
        copy_file file, "app/javascript/controllers/queulor_views/#{file.split("/").last}"
      end
      puts "################ COUCOU ###############"
    end

    def self.source_root
      File.join(File.dirname(__FILE__), '..', '..', 'assets', 'javascripts')
    end
  end
end