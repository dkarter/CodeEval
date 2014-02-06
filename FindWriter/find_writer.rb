def find_writer(code, key)
	result = ""
	key.split.each { |index| result += code[index.to_i - 1] }
	result
end

File.open(ARGV[0]).each_line do |line|
	code = line.split('| ')
	puts find_writer(code[0], code[1])
end