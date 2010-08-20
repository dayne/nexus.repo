def boom(msg='')
  puts '#'*msg.size
  puts msg
  puts '#'*msg.size
  exit
end


def ask(msg)
  puts "WTFLFKFILAWAFFLES"
  answer = ''
  until answer.size > 0 
    print "#{msg} : "
    answer = STDIN.gets.chomp
  end
  answer
end
