def fib(n)
	return n if (0..1).include? n
	(fib(n-1) + fib(n-2))
end

File.open(ARGV[0]).each_line do |line|
	puts fib(line.to_i) if line
end