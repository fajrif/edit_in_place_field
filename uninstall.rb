# Uninstall hook code here
puts "Deleting javascripts files..."
["jquery.edit_in_place_field.js","jquery.purr.js"].each do |file|
  dest_file = if (Rails::VERSION::MAJOR == 3 && Rails::VERSION::MINOR >= 1)
                File.join(::Rails.root, "vendor", "assets", "javascripts", file)
              else
                File.join(::Rails.root, "public", "javascripts", file)
              end
  FileUtils.rm(dest_file)
end
puts "Files deleted - Uninstallation complete!"

