class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = [] #[red]
    @game_over = false
  end

  def play
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    @sequence_length += 1
    show_sequence
    require_sequence
    if @game_over == false
      round_success_message
    end
  end

  def show_sequence
      add_random_color
      p @seq
      sleep(1)
      system("clear")
  end

  def require_sequence
    i = 1
    while i < sequence_length
      puts "What was the color sequence?"
      guess = gets.chomp
      if guess == @seq[i-1]
        i+=1
      else
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    p "Great memory!"
  end

  def game_over_message
    p "You tried your best"
  end

  def reset_game
    self.sequence_length = 1
    @game_over = false
    @seq = []
  end
end

game = Simon.new

game.play