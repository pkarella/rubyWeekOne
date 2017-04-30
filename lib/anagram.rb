class String
  define_method(:anagram) do |wordtwo|
    vowels=["a","e","i","o","u","y"]
    wordarrayone=[]
    wordtwo= wordtwo.downcase.delete(' ').split("")
    word= self.downcase.delete(' ').split("")
    words= word + wordtwo
    word_or_not=0
  words.each()do |letter|
    if vowels.include?(letter)
    word_or_not+=1
  end
end
if word_or_not>=1
  result=true
else
result = wordarrayone.push("this is not a word")
end
if word.sort == wordtwo.sort
wordarrayone.push("its an anagram")
else word.sort != wordtwo.sort
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
