require_relative 'lib/player'
require_relative 'lib/question'
require_relative 'lib/quiz'

# Create players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# Create questions
question1 = Question.new("What is the capital of France?", "Paris")
question2 = Question.new("What is 5 + 7?", "12")
question3 = Question.new("What is the largest planet in our solar system?", "Jupiter")

# Create a quiz
quiz = Quiz.new

# Add players and questions to the quiz
quiz.add_player(player1)
quiz.add_player(player2)
quiz.add_question(question1)
quiz.add_question(question2)
quiz.add_question(question3)

# Start the quiz
quiz.play
