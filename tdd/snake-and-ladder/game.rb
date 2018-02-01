class Game
  attr_accessor :total_steps, :snake_positions, :ladder_positions, :steps

  def initialize(total_steps, snake_positions, ladder_positions, steps)
    @total_steps = total_steps
    @snake_positions = snake_positions
    @ladder_positions = ladder_positions
    @steps = steps
    @current_position = 0
  end

  def dice(face_value)
    @current_position += face_value

    if @snake_positions.include?(@current_position)
      @current_position -= @steps
    elsif @ladder_positions.include?(@current_position)
      @current_position += @steps
    elsif @current_position == @total_steps
      @current_position = 'GAME WON'
    end
    return @current_position

  end
end