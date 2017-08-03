def caesar_cipher string, number
	for i in 0...string.length
		if(string[i].match(/[a-zA-z]/))
			for j in 1..number
				if(string[i] == "z")
					string[i] = "a"
				elsif string[i] == "Z"
					string[i] = "A"
				else
					string[i] = string[i].next
				end
			end
		end
	end
	puts string
end

caesar_cipher("What a string!", 5)