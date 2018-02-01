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
  		assert_equal({"section1": 100,"section2": 80,"section3": 200},obj.bags)	
  	end

  	def test_add_item
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})	
  		assert_equal("Item Added",obj.add_item("laptop", 2))
  		assert_equal("Item Not Added",obj.add_item("laptop", 300))	
  	end

  	def test_find_section
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})
  		assert_equal("Bag of Section3",obj.find_section(30))
  		assert_equal("No Bag Found",obj.find_section(309))
  	end

  	def test_status
  		obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})
  		assert_equal("All sections",obj.status)
  	end
end