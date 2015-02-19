class Cryptographer

  def encrypt(message)
    #find position of a character ( a -> 0)
    #find the new position of character (0 -> 13)
    #find the new character at that position (13 -> n)
    encrypted_chars = message.chars.map do |char|  #we have an array of strings
      encrypt_char(char)
    end

    encrypted_chars.join          # we need an array of encrypted strings

  end

  def encrypt_char(char)
    pos = position(char)
    new_pos = rot(pos)
    new_char = character(new_pos)
  end


  def alphabet
    ("a".."z").to_a
  end

  def position(x)
    alphabet.index(x)
  end

#needs to change to accept a higer index

  def rot(position)
    position + 13
  end

  def character(position)
    alphabet[position]
  end

end



# array = ('a'..'z').to_a
#
#   def encrypt_hash(array)
#     new_hash =  array.group_by do |x|
#         if array.index(x) < 13
#            array[(array.index(x)) + 13]
#         else
#            array[(array.index(x)) - 13]
#         end
#       end
#       puts new_hash.invert
#     end
#
# encrypt_hash(array)
