require 'test/unit'
require './game.rb'

class GameTest < Test::Unit::TestCase
  def test_initialize
    total_steps = 72
    snake_positions = [2, 6, 9]
    ladder_positions = [3, 8, 12]
    steps = 5
    snake_ladder = Game.new(total_steps, snake_positions,
     ladder_positions, steps )
    assert_equal(total_steps, snake_ladder.total_steps)
    assert_equal(snake_positions, snake_ladder.snake_positions)
    assert_equal(ladder_positions, snake_ladder.ladder_positions)
    assert_equal(steps , snake_ladder.steps)
  end

  def test_normal_position
    total_steps = 72
    snake_positions = [2, 6, 9]
    ladder_positions = [3, 8, 12]
    steps = 5
    snake_ladder = Game.new(total_steps, snake_positions,
      ladder_positions, steps )

    expected_current_position = 5

    actual_current_position  = snake_ladder.dice(5)

    assert_equal(expected_current_position, actual_current_position)
  end

  def test_snake_position
    total_steps = 72
    snake_positions = [2, 6, 9]
    ladder_positions = [3, 8, 12]
    steps = 5
    snake_ladder = Game.new(total_steps, snake_positions,
      ladder_positions, steps )

    expected_current_position = snake_positions[1] - steps

    actual_current_position  = snake_ladder.dice(6)

    assert_equal(expected_current_position, actual_current_position)
  end

  def test_ladder_position
    total_steps = 72
    snake_positions = [2, 6, 9]
    ladder_positions = [3, 10, 12]
    steps = 5
    snake_ladder = Game.new(total_steps, snake_positions,
      ladder_positions, steps )

    expected_current_position = ladder_positions[0] + steps

    actual_current_position  = snake_ladder.dice(3)

    assert_equal(expected_current_position, actual_current_position)
  end

  def test_game_win
    total_steps = 72
    snake_positions = [2, 6, 9]
    ladder_positions = [3, 8, 12]
    steps = 5
    snake_ladder = Game.new(total_steps, snake_positions,
      ladder_positions, steps )

    expected_current_position = 'GAME WON'

    actual_current_position  = snake_ladder.dice(5)
    actual_current_position  = snake_ladder.dice(67)

    assert_equal(expected_current_position, actual_current_position)
  end
end