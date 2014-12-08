a = {1=>["a","b","c"], 2=> ["e", "f" , "g"]}

a.each do |row|
	row[1].each do |col|
		puts col.upcase

end

end
