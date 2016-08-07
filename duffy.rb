print "What's on your mind, Duffy? "
user_input = gets.chomp

until user_input == 'exit'
  s = { (/s/) => ('th'), (/S/) => ('Th'),
        (/ce/) => ('the'), (/Ce/) => ('The'),
        (/ci/) => ('thi'), (/Ci/) => ('Thi'),
        (/cy/) => ('thy'), (/Cy/) => ('Thy') }

  s.each do |x, y|
    user_input.gsub!(x, y)
  end

  puts "Duffy says \"#{user_input}\""

  print "What's on your mind, Duffy? "
  user_input = gets.chomp
end
