# = PasswordHash
#
# Created by Joel Parker Henderson, joelparkerhenderson@gmail.com
# CreativeCommons License, Attribution Non-commercial Share Alike
#
#   - uses SHA256 hexdigest
#   - authenticates a password, salt, and hash
#
# Examples:
#   p = PasswordHash.new(pass,salt)
#   p.valid?(pass,salt)
##

class PasswordHash < String

 def initialize(pass,salt)
  pass and pass.strip!='' or raise "pass:#{pass}"
  salt and salt.strip!='' or raise "salt:#{salt}"
  super(Digest::SHA1.hexdigest(pass+salt))
 end

 def valid?(pass,salt)
  self == Digest::SHA1.hexdigest(pass+salt)
 end

end
