a = [[1,1,1],[2,2,5],[1,2,1]]

full = true
a.each do |r|
	r.each do |c|
		if c != 1 and c != 2
			full = false
		end
	end
end

puts full
