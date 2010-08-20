require 'rubygems'
require 'cmdparse'

$cmd = CmdParse::CommandParser.new(true)
$cmd.program_name = "bs"
$cmd.program_version = [ 0, 0, 1 ]
$cmd.options = CmdParse::OptionParserWrapper.new do |opt|
  opt.separator "Global options:"
  opt.on("--verbose", "Verbose output") {|t| $verbose = true}
end

$cmd.add_command( CmdParse::HelpCommand.new )
$cmd.add_command( CmdParse::VersionCommand.new )

#require 'config/setup.rb'
require 'bs-cmds/all'

$cmd.parse
