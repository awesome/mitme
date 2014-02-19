module Mitme
  module Generators
    class Error < Thor::Error
    end

    class LicenseForGenerator < Rails::Generators::Base
      argument :copyright_holders, :type => :string, :default => "copyright holders"

      def generate_license
        File.open("LICENSE", 'w+') { |f| 
          f.write("The MIT License (MIT)")
          f.write("\n")
          f.write("\n")
          f.write("Copyright (c) #{current_year} #{holders_name}")
          f.write("\n")
          f.write("\n")
          f.write("Permission is hereby granted, free of charge, to any person obtaining a copy ")
          f.write("\n")
          f.write("of this software and associated documentation files (the \"Software\"), to deal ")
          f.write("\n")
          f.write("in the Software without restriction, including without limitation the rights ")
          f.write("\n")
          f.write("to use, copy, modify, merge, publish, distribute, sublicense, and/or sell ")
          f.write("\n")
          f.write("copies of the Software, and to permit persons to whom the Software is ")
          f.write("\n")
          f.write("furnished to do so, subject to the following conditions: ")
          f.write("\n")
          f.write("\n")
          f.write("The above copyright notice and this permission notice shall be included in ")
          f.write("\n")
          f.write("all copies or substantial portions of the Software.")
          f.write("\n")
          f.write("\n")
          f.write("THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR ")
          f.write("\n")
          f.write("IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, ")
          f.write("\n")
          f.write("FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE ")
          f.write("\n")
          f.write("AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER ")
          f.write("\n")
          f.write("LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, ")
          f.write("\n")
          f.write("OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN ")
          f.write("\n")
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