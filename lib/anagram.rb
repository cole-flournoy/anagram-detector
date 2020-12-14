require "pry"

class Anagram
    # attr_accessor
    def initialize(word)
        @word = word
    end
    def match(list_of_words)
        anagrams = []
        list_of_words.each do |w|
            # @word = @word.split("").sort
            # binding.pry
            # w = w.split("").sort
            # binding.pry
            anagrams = anagrams << w if w.split("").sort == @word.split("").sort
        end
        anagrams    
    end
end


listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana listen))