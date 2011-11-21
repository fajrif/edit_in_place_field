# Install hook code here
require 'rails'
puts "Copying javascripts files..."
["jquery.edit_in_place_field.js","jquery.purr.js"].each do |file|
  dest_file = if (Rails::VERSION::MAJOR == 3 && Rails::VERSION::MINOR >= 1)
                File.join(::Rails.root, "vendor", "assets", "javascripts", file)
              else
                File.join(::Rails.root, "public", "javascripts", file)
              end
  src_file  = File.join(File.dirname(__FILE__) , "javascripts", file)
  FileUtils.cp_r(src_file, dest_file)
end
puts "Files copied - Installation complete!"

