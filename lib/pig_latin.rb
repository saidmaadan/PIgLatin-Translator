require "pig_latin/version"

module PigLatin

  def self.moderator(input)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = ('a'..'z').to_a
    consonants = words - vowels

    if vowels.include?(input[0])
      input + 'way'
    elsif consonants.include?(input[0]) && consonants.include?(input[1])
      input[2..-1] + input[0..1] + 'ay'
    elsif consonants.include?(input[0])
      input[1..-1] + input[0] + 'ay'
    else
     return input
    end
  end
end
