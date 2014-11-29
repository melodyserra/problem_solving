#English Word Matching

##Problem

#####Given a list of English words and a set of letters (say “yxmijcmknbshdwifzrsmueis”), display all the words that can possibly be constructed from any subset (or all) those letters.

##Rules
- Use a language of your choice to accomplish the problem.
- Your algorithm should work with letter strings of arbitrary length.
- Bonus 1: Try testing it with strings of 100 or 200 letters to see if it can scale.
- Bonus 2: Create a UI where you can filter the list by size of word and/or starting letter.

##Starter Code

To accomplish this problem you will need to use the included text list of English words. With this list you will have to parse it into a usable format to use in your code. This can be accomplished in Ruby with `File`:

```
File.open("wordsEn.txt").each do |line|
	#Do something here with each line
end
```