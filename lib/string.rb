class String
  DUAL_CASE_ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

  # Hiragana syllables taken from:
  # http://en.wikipedia.org/wiki/Hiragana#Table_of_hiragana
  # http://www.japanese-lesson.com/resources/pdf/hiragana_chart.pdf 
  HIRAGANA = /\
a|i|u|e|o|\
ka|ki|ku|ke|ko|\
sa|shi|su|se|so|\
ta|chi|tsu|te|to|\
na|ni|nu|ne|no|\
ha|hi|fu|he|ho|\
ma|mi|mu|me|mo|\
ya|yu|yo|\
ra|ri|ru|re|ro|\
wa|wi|we|wo|\
n|m|\
ga|gi|gu|ge|go|\
za|ji|zu|ze|zo|\
da|de|do|\
ba|bi|bu|be|bo|\
pa|pi|pu|pe|po|\
vu|\
vi|fa|ti|du|we|fo|\
kya|kyu|kyo|\
sha|shu|sho|\
cha|chu|cho|\
nya|nyu|nyo|\
hya|hyu|hyo|\
mya|myu|myo|\
rya|ryu|ryo|\
gya|gyu|gyo|\
ja|ju|jo|\
bya|byu|byo|\
pya|pyu|pyo\
/

  def palindrome?(lang=:EN)
    text = letters_only
    return true if text == text.reverse(lang)
  end

  def reverse(lang=:EN)
    return each_char.to_a.reverse.join if (lang == :EN || lang == nil)
    return self.scan(HIRAGANA).reverse.join if (lang == :JP)
  end

  private

  def letters_only
    just_letters = split('').find_all do |char|
      DUAL_CASE_ALPHABET.include?(char)
    end.join('')

    return just_letters.downcase
  end
end
