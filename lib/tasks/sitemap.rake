begin
  require 'sitemap_generator/tasks'
rescue Exception => e
  puts "Warning, couldn't load gem tasks: #{e.message}! Skipping..."
end
