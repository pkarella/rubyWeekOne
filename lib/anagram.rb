class String
  define_method(:anagram) do |wordtwo|
    vowels=["a","e","i","o","u","y"]
    wordarrayone=[]
    wordtwo= wordtwo.downcase.delete("^a-z").split("").sort
    word= self.downcase.delete("^a-z").split("").sort


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
result = false
end
if result==false
   wordarrayone.push("this is not a word").join(" ")
 elsif result==true && (word  & wordtwo).empty?
      wordarrayone.push("antigram!")
  elsif word == wordtwo.reverse
      wordarrayone.push("palindrome!")
  elsif  word == wordtwo
       wordarrayone.push("anagrams!")
  else
       wordarrayone.push("not an anagram!")
     end
wordarrayone.join(" ")
  end
end
