def number_of_ones(number)
	number.to_i.to_s(2).scan(/1/).size
end

File.open(ARGV[0]).each_line do |line|
	puts number_of_ones(line)
end