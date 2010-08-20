add = CmdParse::Command.new('add',false)
add.short_desc = "add directory as a repo"

# bs add [path]    
add.set_execution_block do |args|
  if args.size == 0
    puts "no add directory given... you fail"
    exit
  end

  path = args.shift
  boom("not a valid directory path: #{path}") unless File.directory?(path)

  name = ask("name of repo")
  puts "got a name #{name}"
end

$cmd.add_command(add)
