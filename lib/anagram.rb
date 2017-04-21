class String
  define_method(:anagram)do |wordtwo|
vowels=["a","e","i","o","u","y"]
word= self.downcase.delete(' ').split("")
wordtwo= wordtwo.downcase.delete(' ').split("")
wordarrayone=[]
both_words = word & wordtwo

both_words.each() do |vowel|
if both_words.length == vowel.length
 wordarrayone.push("this is not a word")
end

end


if both_words.length == 0
  wordarrayone.push("These words have no letter matches this is an antigram")
elsif word.sort == wordtwo.uniq.sort
wordarrayone.push("its an anagram")
else word.sort != wordtwo.uniq.sort
  wordarrayone.push("not an anagram")
end
if word == wordtwo.reverse
  wordarrayone.push("and this is also a palindrome")
end

wordarrayone.join(" ")
end

end
