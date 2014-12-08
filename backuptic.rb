board = {1 => [" "," "," "], 2 => [" "," "," "], 3 => [" "," "," "]}
winner = " "
$play_status = "go"

def endgame(b)
	# 3 in a row winner
	(1..3).each do |row|
		if b[row][0] == "x" and b[row][1] == "x" and b[row][2] == "x"
			$winner = "You Won!"
			$play_status = "stop"
		elsif b[row][0] == "o" and b[row][1] == "o" and b[row][2] == "o"
			$winner = "You Lost :("
			$play_status = "stop"
		end
	end
	(0..2).each do |col|
		if b[1][col] == "x" and b[2][col] == "x" and b[3][col] == "x"
			$winner = "You Won!"
			$play_status = "stop"
		elsif b[1][col] == "o" and b[2][col] == "o" and b[3][col] == "o"
			$winner = "You Lost :("
			$play_status = "stop"
		end
	end
	
	if b[1][0] == "x" and b[2][1] == "x" and b[3][2] == "x"
		$winner = "You Won!"
		$play_status = "stop"
	elsif b[3][0] == "x" and b[2][1] == "x" and b[1][2] == "x"
		$winner = "You Won!"
		$play_status = "stop"
	elsif b[1][0] == "o" and b[2][1] == "o" and b[3][2] == "o"
	        $winner = "You Lost :("             
		$play_status = "stop"
	elsif b[3][0] == "o" and b[2][1] == "o" and b[1][2] == "o"            
	        $winner = "You Lost :("             
		$play_status = "stop"		
	end
	# No winner (full board)
	full = true
	b.each do |r|
        	r[1].each do |c|
        	        if c != "x" and c != "o"
        	                full = false
        	        end
        	end
	end
	if full == true
		$winner = "It's a Tie!"
		$play_status = "stop"
	end
end

full = true
board.each do |r|
	r[1].each do |c|
		if c != "x" and c != "o"
			full = false
		end
	end
end
			



def showboard(b)
system "clear"
spacing = "___|___|___"
i = 1
while i < 4
	puts "   |   |   "
	row1 = " " + b[i][0].to_s + " | " + b[i][1].to_s + " | " + b[i][2].to_s
	puts row1
	if i < 3
		then
		puts spacing
		else
	i+=1
	end
i+=1
end
end

def xturn(b)
puts "It's Your Turn!"
puts "Enter a Row Number..."

r = gets.to_i

puts "Enter a Column Number..."

c = (gets.to_i - 1)

if b[r][c] == "x"
	then puts "Space is already taken"
	puts "Please try again..."
elsif b[r][c] == "o"
	then puts "Space is already taken"
        puts "Please try again..."
else
	b[r][c] = "x"
end
puts showboard(b)
end

def oturn(b)
puts "Calculating Turn For Your Opponent..."
sleep(2)

r = rand(3) + 1
c = rand(3)
b[r][c] = "o"
puts showboard(b)
end

while  $play_status == "go"
	xturn(board)
	endgame(board)
	break if $play_status == "stop"
	oturn(board)
	endgame(board)
end
puts "GAMEOVER"
puts "The Winner is..."
sleep 2
puts $winner
