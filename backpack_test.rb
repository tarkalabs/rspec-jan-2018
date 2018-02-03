require_relative "backpack"
require "test/unit"
 
class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple
  	assert_raise ArgumentError do
  		SimpleNumber.new(["section1"])
  	end
    assert_raise ArgumentError do 
    	SimpleNumber.new({"section1": 100,"section2": 80,"section3": "200"})
    end 

    assert_raise ArgumentError do 
    	SimpleNumber.new({})
    end 
  end

  	def test_initialize
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})
  		assert_equal({section1: {
  				total_capacity: 100,
  				available_capacity: 100,
  				available_items: []
  			},section2: {
  				total_capacity: 80,
  				available_capacity: 80,
  				available_items: []},section3: {
  				total_capacity: 200,
  				available_capacity: 200,
  				available_items: []}}, obj.bags)	
  	end

  	def test_add_item
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})	
  		assert_equal("Item Added",obj.add_item("laptop", 2))
  		assert_equal("Item Not Added",obj.add_item("laptop", 300))	
  	end

  	def test_find_section
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})
  		assert_equal({"section": :section3, weight: 200},obj.find_section(30))
  		assert_equal({section: nil, weight: 0},obj.find_section(309))
  	end

  	def test_status
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})
  		assert_equal(obj.bags,obj.status)
  	end
end