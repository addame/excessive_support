Dir[File.dirname(__FILE__) + "/core/*.rb"].sort.each do |path|
  filename = File.basename(path, '.rb')
  require "excessive_support/core/#{filename}"
end