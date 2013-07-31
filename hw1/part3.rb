def combine_anagrams(words)
  anagrams = []
  words.each do |word|
  	not_in_an = true
	anagrams.each do |an_list|
		if an_list[0].downcase.chars.sort.join == word.downcase.chars.sort.join
			an_list.push(word)
			not_in_an = false
		end
	end
	if not_in_an
		anagrams.push([word])
	end
  end
  return anagrams
end


