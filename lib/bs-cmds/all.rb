Dir[ File.join( File.dirname( __FILE__ ), "*.rb") ].each do |lib|
  next if File.basename(lib) == File.basename( __FILE__ )
  require "bs-cmds/#{File.basename(lib)}"
end
