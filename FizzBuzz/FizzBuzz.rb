#FizzBuzz
def count_fizz_buzz(a, b, n)
	result = ""
	
	1.upto(n) do |i|
		div_by_a = (i % a) == 0
		div_by_b = (i % b) == 0
		
		if div_by_a && div_by_b
			result += "FB"
		elsif div_by_a
			result += "F"
		elsif div_by_b
			result += "B"
		else
			result += i.to_s
		end

		result += " " if i < n
	end
	result
end

File.open(ARGV[0]).each_line do |line|
	args = line.split
	puts count_fizz_buzz(args[0].to_i, args[1].to_i, args[2].to_i)	
end