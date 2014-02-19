module Mitme
  module Generators
    class Error < Thor::Error
    end

    class LicenseForGenerator < Rails::Generators::Base
      argument :copyright_holders, :type => :string, :default => "copyright holders"

      def generate_license
        File.open("LICENSE.txt", 'w+') { |f| 
          f.write("The MIT License (MIT)")
          f.write("\n")
          f.write("\n")
          f.write("Copyright (c) #{current_year} #{holders_name}")
          f.write("\n")
          f.write("\n")
          f.write("Permission is hereby granted, free of charge, to any person obtaining a copy ")
          f.write("of this software and associated documentation files (the \"Software\"), to deal ")
          f.write("in the Software without restriction, including without limitation the rights ")
          f.write("to use, copy, modify, merge, publish, distribute, sublicense, and/or sell ")
          f.write("copies of the Software, and to permit persons to whom the Software is ")
          f.write("furnished to do so, subject to the following conditions: ")
          f.write("\n")
          f.write("\n")
          f.write("The above copyright notice and this permission notice shall be included in ")
          f.write("all copies or substantial portions of the Software.")
          f.write("\n")
          f.write("\n")
          f.write("THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR ")
          f.write("IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, ")
          f.write("FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE ")
          f.write("AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER ")
          f.write("LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, ")
          f.write("OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN ")
          f.write("THE SOFTWARE.")
        }
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