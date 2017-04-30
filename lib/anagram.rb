class String
  define_method(:anagram) do |wordtwo|
    wordarrayone=[]
     reversed_word_two = wordtwo.downcase().delete("^a-z").reverse()
     word_one = self.downcase().delete("^a-z")
    sorted_word_one = self.downcase().delete("^a-z").split('').sort()
    sorted_word_two = wordtwo.downcase().delete("^a-z").split('').sort()

    if word_one.scan(/[aeiouy]/).count <1
      wordarrayone.push("this is not a word")
    elsif (sorted_word_two  & sorted_word_one).empty?
       wordarrayone.push("this is an antigram")
    elsif word_one == reversed_word_two
       wordarrayone.push("this is a palindrome")
    elsif sorted_word_one == sorted_word_two
      wordarrayone.push("its an anagram")
    else
     wordarrayone.push("not an anagram")
    end
     wordarrayone.join(" ")
  end
end
