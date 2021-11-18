def substrings(string, dictionary)
  dictionary.to_h do |word|
    times_found = 0
    for i in 0..(string.length) do
    if string[i ... i + word.length].downcase == word.downcase
        times_found += 1
      end
    end
    [word, times_found]
  end.select { |key, value| value != 0}
end
