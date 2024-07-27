require 'rails/generators'

module QueulorView
  class InstallGenerator < Rails::Generators::Base
    def install
      # Copy the unobtrusive JS file
      # copy_file('autocomplete-rails.js', 'public/javascripts/autocomplete-rails.js')
      puts "################ COUCOU ###############"
    end

    def self.source_root
      File.join(File.dirname(__FILE__), '..', '..', 'assets', 'javascripts')
    end
  end
end