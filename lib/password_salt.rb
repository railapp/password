# = PasswordSalt 
#
# Created by Joel Parker Henderson, joelparkerhenderson@gmail.com
# CreativeCommons License, Attribution Non-commercial Share Alike
#
# This generates a secure random 8 character salt
# of all lowercase letters with 26^8 combinations.
# This can easily be sent via web URIs, email, etc.
# 
# Example:
#   PasswordSalt.new => "avzwbnxr"
##

require 'securerandom'

class PasswordSalt < String

 Count = 8
 Chars = ('a'..'z').to_a

 def initialize
  super(Array.new(Count){Chars[SecureRandom.random_number(Chars.count)]}.join)
 end

end
