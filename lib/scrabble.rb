#!/usr/bin/env ruby

class Letters
  def initialize(word)
    @letter_array = word.upcase.split('')
    @letter_values = {
      1=>/[AEIOULNRST]/,
      2=>/[DG]/,
      3=>/[BCMP]/,
      4=>/[FHVWY]/,
      5=>/[K]/,
      8=>/[JX]/,
      10=>/[QZ]/
    }
  end

  def letters
    @letter_array
  end

  def scrabble_score
    score = 0
    @letter_array.each { |letter|
      @letter_values.each { |key, value|
        if letter =~ value then score += key end
      }
    }
    score
  end

  def open_and_score(file)
    file = File.open(file).read.chomp
    @letter_array = file.upcase.split('').keep_if { |c| c =~ /[A-Z]/ }
    self.scrabble_score()
  end

end
