require_relative 'frequencies'

text = File.read('data/article.txt')

histogram = frequencies(text)

histogram.sort_by { |word, frequency| frequency }.reverse.each do |word, frequency|
  puts "#{word}: #{frequency}"
end
