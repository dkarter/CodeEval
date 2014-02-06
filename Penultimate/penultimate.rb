def get_penultimate_word(sentence)
    words = sentence.split
    words[words.length - 2]
end

File.open(ARGV[0]).each_line do |line|
	puts get_penultimate_word(line)    
end
