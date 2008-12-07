# = PasswordText
#
# Created by Joel Parker Henderson, joelparkerhenderson@gmail.com
# CreativeCommons License, Attribution Non-commercial Share Alike
#
# We require more than 8 characters because hackers have lists
# of all password 8 characters and fewer and ways to crack them.
#
# We choose 10 characters to make a sufficiently strong password
# for usual web applications. You can make this stronger as needed.
#
# We know users are confused by upper/lower case so we use only lowercase,
# and by letters vs. numbers like "oh" and "zero" so we use only letters.
# We choose this as an acceptable tradeoff between usability and complexity,
# and because it is significantly easier for users who type on smartphones.
#
#
# Example:
#   Password.new => "avzwbnxrem"
##

require 'securerandom'

class PasswordText < String
 Count = 10
 Chars = ['a','b','c','d','e','f','g','h','j','k','m','n','p','r','s','t','u','v','w','x','y','z']

 def initialize
  super(Array.new(Count){Chars[SecureRandom.random_number(Chars.count)]}.join)
 end

end
