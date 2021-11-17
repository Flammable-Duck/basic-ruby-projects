require 'pry-byebug'

class CaesarCipher
def encode(message, shift)
  "returns encoded string 'message' shifted by 'shift' interger"
  shift %= 26
  message.split('').map do |char|
    if char.match?(/[a-zA-Z0-9]/)
        if char.match?(/[A-Z]/) && (char.ord + shift) > 'Z'.ord\
          || char.match?(/[a-z]/) && (char.ord + shift) > 'z'.ord
          char = (char.ord - 26).chr
        elsif char.match?(/[0-9]/) && (char.ord + shift) > '9'.ord
          char = (char.ord - 10).chr
        end

        char = (char.ord + shift).chr
      end
      char
    end.join
  end
end

if __FILE__ == $0
  cipher = CaesarCipher.new
  p cipher.encode("This is a very secret message!", -7)
  # binding.pry
end
