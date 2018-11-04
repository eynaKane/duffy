require 'timeout'
require 'pry'

loop do
  print "What's on your mind, Duffy? "

  begin
	  user_input = Timeout::timeout(3) { gets.chomp }
	rescue
		break
	end

  s = { (/t?s+/) => ('th'), (/t?S+/) => ('Th'),
        (/ce/) => ('the'), (/Ce/) => ('The'),
        (/ci/) => ('thi'), (/Ci/) => ('Thi'),
        (/cy/) => ('thy'), (/Cy/) => ('Thy') }

  s.each { |x, y| user_input.gsub!(x, y) }

  puts "Duffy says \"#{user_input}\""
end
