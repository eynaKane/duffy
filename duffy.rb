print "What's on your mind, Duffy? "
user_input = gets.chomp

unless user_input == 'exit'
  s = { (/s/) => ('th'), (/S/) => ('Th'),
        (/ce/) => ('the'), (/Ce/) => ('The'),
        (/ci/) => ('thi'), (/Ci/) => ('Thi'),
        (/cy/) => ('thy'), (/Cy/) => ('Thy') }

  s.each do |x, y|
    user_input.gsub!(x, y)
  end

  puts user_input

  print "What's on your mind, Duffy? "
  user_input = gets.chomp
end
