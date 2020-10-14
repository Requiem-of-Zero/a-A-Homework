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
    round_success_message
  end

  def show_sequence
     add_random_color
  end

  def require_sequence
    i = 0
    while i < sequence_length
      puts "What was the sequence?"
      guess = gets.chomp
      if guess == @seq[i]
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
    "Great memory!"
  end

  def game_over_message
    "You tried your best"
  end

  def reset_game
    self.sequence_length = 1
    @game_over = false
    @seq = []
  end
end
