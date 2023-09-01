class Question
    attr_accessor :text, :correct_answer
  
    def initialize(text, correct_answer)
      @text = text
      @correct_answer = correct_answer
    end
  
    def correct?(user_answer)
      user_answer.downcase == @correct_answer.downcase
    end
  end
  