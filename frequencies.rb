def frequencies(text)
  histogram = {}
  words = text.downcase.split(/\b/)
  words.each do |word|
    next if word =~ /\W/

    if histogram.key?(word)
      histogram[word] += 1
    else
      histogram[word] = 1
    end
  end
  histogram
end

  # start an empty hash = histogram {}
  # words = split the text into array of words (.split)
  # iterate of the words (.each |word|)
    # if the word exists as a key in the histogram (.key?(word))
      # update histogram with key and update value + 1
    # else
      # put the word in histogram (key = word, value = 1)
  # return a hash
