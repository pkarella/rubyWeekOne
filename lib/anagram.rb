class String
 define_method(:anagram) do |wordtwo|
 vowels = true
word= self.downcase.delete(' ').split("")
wordtwo= wordtwo.downcase.delete(' ').split("")
wordarrayone=[]
both_words = word & wordtwo
# both_words.each()do |letters|
#   if letters.join().scan(/[aeiouy]/).count <1
#    wordarrayone.push("this is not a word")
# end
# end

if word.uniq.sort == wordtwo.uniq.sort
wordarrayone.push("its an anagram")
else word.uniq.sort != wordtwo.uniq.sort
 wordarrayone.push("not an anagram")
end
if word == wordtwo.reverse
 wordarrayone.push("and this is also a palindrome")
 end
 word.each()do |words|
if wordtwo.include?(words)
 else
  return wordarrayone.push("this is an antigram")
 end
end
wordarrayone.join(' ')
 end
end
