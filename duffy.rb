loop do
  print "What's on your mind, Duffy? "
  user_input = gets.chomp
  break if user_input =~ /exit/i
  s = { (/t?s+/) => ('th'), (/t?S+/) => ('Th'),
        (/ce/) => ('the'), (/Ce/) => ('The'),
        (/ci/) => ('thi'), (/Ci/) => ('Thi'),
        (/cy/) => ('thy'), (/Cy/) => ('Thy') }

  s.each { |x, y| user_input.gsub!(x, y) }

  puts "Duffy says \"#{user_input}\""
end
