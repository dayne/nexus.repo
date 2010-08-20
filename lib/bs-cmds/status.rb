status = CmdParse::Command.new('status',false)
status.short_desc = "status of current dir (defaults cwd)"
    
  
status.set_execution_block do |args|
  target = args.shift || Dir.pwd 

  puts "getting status on #{target}" if $verbose

  r = Repo.find(target)
  unless r 
    puts "#{target} is not in a repository.. failing out bye bye"
    exit
  end

  puts "#{r.name} is the repo for #{target}"
end

$cmd.add_command(status)
