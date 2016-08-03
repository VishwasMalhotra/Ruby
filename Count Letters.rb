puts "Please enter a word."
word = gets.chomp.downcase.to_s

def count_letter(word)
count = Hash.new(0)
word.delete(' ').gsub(/\d/, '').gsub(/\W+/, '').each_char { | c | count[c] += 1}
Hash[count.sort_by { | a, b | a}]
end

puts count_letter(word)
$end

