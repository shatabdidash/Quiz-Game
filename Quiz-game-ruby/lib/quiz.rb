class Quiz
    def initialize
      @players = []
      @questions = []
    end
  
    def add_player(player)
      @players << player
    end
  
    def add_question(question)
      @questions << question
    end
  
    def play
      @questions.shuffle!
      @questions.each do |question|
        @players.each do |player|
          puts "#{player.name}, here's your question:"
          puts question.text
          user_answer = gets.chomp
          if question.correct?(user_answer)
            puts "Correct! You earned a point."
            player.increase_score(1)
          else
            puts "Incorrect."
          end
        end
      end
      show_winner
    end
  
    def show_winner
    max_score = @players.max_by { |player| player.score }.score
    winners = @players.select { |player| player.score == max_score }

    if winners.size == 1
      puts "The winner is #{winners[0].name} with a score of #{winners[0].score}!"
    else
      puts "It's a tie! The winners are:"
      winners.each { |winner| puts "#{winner.name} with a score of #{winner.score}!" }
    end
  end
end
  