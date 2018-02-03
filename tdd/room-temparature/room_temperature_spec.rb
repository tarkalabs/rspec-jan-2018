
require_relative 'room_temperature'
require 'test/unit'

class Room < Test::Unit::TestCase

    def test_temp
    	#Without initialization
    	puts @room_temperature = RoomTemperature.new({john: [21, 24], mary: [23, 26]}, {ac1: 19, ac2: 24})
    	assert_equal({john: [21, 24], mary: [23, 26]}, @room_temperature.persons)
    	assert_equal({ac1: 19, ac2: 24}, @room_temperature.ac)

    	#With initialization
    	@room_temp = RoomTemperature.new({john: [21, 24], mary: [23, 26]}, {ac1: 19, ac2: 24}) 
    	assert_equal({:comfortable=>[], :not_comfortable=>[:john, :mary]}, @room_temp.change_temperature('ac1', 16))
    	assert_equal({:comfortable=>[:john], :not_comfortable=>[:mary]}, @room_temp.change_temperature('ac2', 26))
    	assert_equal({:comfortable=>[:john, :mary], :not_comfortable=>[]}, @room_temp.change_temperature('ac1', 20))
    end
end