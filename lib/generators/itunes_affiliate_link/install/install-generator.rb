module ItunesAffiliate
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../templates/', __FILE__)

      def copy_initializer_file
        copy_file 'itunes_affiliate_link.rb', "config/initializers/itunes_affiliate_link.rb"
      end
    end
  end
end