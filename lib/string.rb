class String
  DUAL_CASE_ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

	def palindrome?(lang=:EN)
    text = letters_only
    return true if text == text.reverse
	end

  def reverse(lang=:EN)
    return each_char.to_a.reverse.join
  end

  private

  def letters_only
    just_letters = split('').find_all do |char|
      DUAL_CASE_ALPHABET.include?(char)
    end.join('')

    return just_letters.downcase
  end
end
