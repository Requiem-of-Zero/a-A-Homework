class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new(4, :stone)}
    @cups[6], @cups[13] = [], []
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if @cups[start_pos].nil?
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    held = @cups[start_pos]
    @cups[start_pos] = []
    stop_idx = nil

    (start_pos+1..Float::INFINITY).each do |i|
      idx = i % 14
      if current_player_name == @name1
        @cups[idx] << held.shift unless idx == 13
      else
        @cups[idx] << held.shift unless idx == 6
      end
      if held.empty?
        stop_idx = idx
        break
      end
    end
    render

    next_turn(stop_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?{|spots| spots.empty?} || @cups[7..12].all?{|spots| spots.empty?}
  end

  def winner
    if @cups[6].length > @cups[13].length
      @name1
    elsif @cups[6] == @cups[13]
      :draw
    else
      @name2
    end
  end
end
