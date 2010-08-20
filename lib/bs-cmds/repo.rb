repo = CmdParse::Command.new('repo',false)
repo.short_desc = "enabled repo mojo"
    
#repo.options = CmdParse::OptionParserWrapper.new do |opt|
#  opt.on('-a','--add','add a repo'){$config[:repo] = true}
#end
  
repo.set_execution_block do |args|
  if args.size == 0
    puts "no repo extension given"
  end

  args.each { |a| puts ">>> Asdflaksdfj!!! butter monkey banana: #{a}" }
end

$cmd.add_command(repo)
