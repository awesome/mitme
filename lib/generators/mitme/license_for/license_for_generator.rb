module Mitme
  module Generators
    class Error < Thor::Error
    end

    class LicenseForGenerator < Rails::Generators::Base
      desc 'A library to generate an MIT license for your rails application.'
      source_root File.expand_path('../templates', __FILE__)
      argument :copyright_holders, :type => :string, :default => "copyright holders"

      def generate_license
        copy_file "LICENSE-template", "LICENSE"

        modified_license = File.read("LICENSE").gsub(/(<year>|<copyright_holders>)/, "<year>" => "#{current_year}", "<copyright_holders>" => "#{holders_name}")

        File.open("LICENSE", 'w+') do |license|
          license << modified_license
        end  
      end

      private
      
      def holders_name
        copyright_holders.to_s
      end

      def current_year
        Date.today.strftime("%Y")
      end
    end
  end
end