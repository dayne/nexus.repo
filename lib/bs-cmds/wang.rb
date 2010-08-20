wang = CmdParse::Command.new('wang',false)
wang.short_desc = "enabled wang mojo"
    
wang.options = CmdParse::OptionParserWrapper.new do |opt|
  opt.on('-w','--wang','show lots of wang'){$config[:wang] = true}
end
  
wang.set_execution_block do |args|
  if args.size == 0
    puts "no wang extension given"
  end

  args.each { |a| puts ">>> WANG: #{a}" }
end

$cmd.add_command(wang)
