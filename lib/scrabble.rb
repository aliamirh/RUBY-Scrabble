#!/usr/bin/env ruby

class Letters
  def initialize(letter_array)
    @letter_array = letter_array
  end

  def letters
    @letter_array
  end

  def scrabble_score
    letter_values = {
      1=>['A','E','I','O','U','L','N','R','S','T'],
      2=>['D','G'],
      3=>['B','C','M','P'],
      4=>['F','H','V','W','Y'],
      5=>['K'],
      8=>['J','X'],
      10=>['Q','Z']
    }
    score = 0
    @letter_array.each {|letter|
      letter_values.each {|key, value|
        if value.include?(letter)
          score += key
        end
      }
    }
    score
  end

end
