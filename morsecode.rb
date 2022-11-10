# A function that returns the MooseCode and the corresponding meaning objects.
def objects
  codes = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
            '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
            '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
            '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
            "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z" }
  return codes;
end

# A method to decode MooseCode Character.
print " Character code: "
def decod_char(s)
  print objects()[s]
end
decod_char("---")
print " Word Code: "

# Decoding a sentense
def decode_word(word)
  charArray = word.split(" ")
  for char in charArray
    decod_char(char)
  end
end
decode_word("-. .- -- .")
print " Message Code: "

# Decoding a Message
def decode_message(message)
  wordsArray = message.split("   ")
  for word in wordsArray
    decode_word(word)
    print " "
  end
end

decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
