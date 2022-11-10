
# A method to decode MooseCode Character.
print ' Character code: '
def decod_char(char_string)
    # An hash of keys and values.
    codes = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
            '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
            '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
            '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
            '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  print codes[char_string]
end
decod_char('---')
print ' Word Code: '

# Decoding a sentense
def decode_word(word)
  char_array = word.split(' ')
  for char in char_array
    decod_char(char)
  end
end
decode_word('-. .- -- .')
print ' Message Code: '

# Decoding a Message
def decode_message(message)
  words_array = message.split('   ')
  for word in words_array
    decode_word(word)
    print ' '
  end
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
