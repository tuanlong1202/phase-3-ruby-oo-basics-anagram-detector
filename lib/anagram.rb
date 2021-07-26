# Your code goes here!
class Anagram
    attr_accessor :word
    def initialize(a_word)
        @word = a_word
    end
    def match(arrWords)
        arrRet = []
        arrWords.each do |item|
            if sameCompose(@word,item)
                arrRet << item
            end
        end
        arrRet
    end
    def sameCompose(firstWord,secondWord)
        arrTmp1 = firstWord.split("")
        arrTmp2 = secondWord.split("")
        arrTmp1.sort == arrTmp2.sort
    end
end