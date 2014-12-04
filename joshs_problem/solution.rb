#!/usr/bin/env ruby

require 'prime'

while true
  puts "Please enter a string to check if it's Josh's string (all lower case):"

  while input_str = gets
    unless input_str =~ /[a-z]+/
      puts "Must be all lower case!"
      next
    else
      if Prime.prime?(input_str.split.map { |char| char.ord - 96 }.reduce(:+))
        puts "YES!"
      else
        puts "NO!"
      end
      break
    end
  end
end

# Laura's code:
# require 'prime'
# require 'pry'

# def checkstring(string)

#   string = string.downcase
#   stringarr = string.split("")
#   alphabet = ('a'...'z').to_a
#   total = 0

#   stringarr.each do |i|
#     total += alphabet.index(i).to_i + 1 + total

#   end
#   if Prime.prime?(total)
#     puts "This is a prime, word!!!"
#   else
#     puts "It isn't a prime, try me again!!!"
#   end



# end
# puts "What's your word?"
# string = gets.chomp
# checkstring(string)
