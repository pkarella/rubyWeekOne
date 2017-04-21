class String
  define_method(:anagram)do |wordtwo|
word= self.downcase.split("")
wordtwo= wordtwo.downcase.split("")
wordarray=[]
if word.uniq.sort == wordtwo.uniq.sort
 wordarray.push("its an anagram")
else
  wordarray.push("not an anagram")
end
if word == wordtwo.reverse
  wordarray.push("and this is also a palindrome")
end
wordarray.join(" ")
end
end
