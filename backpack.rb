class SimpleNumber
	attr_accessor :bags

  def initialize(bags)
  	raise ArgumentError  if bags.class.to_s != "Hash" || !(bags.keys & bags.keys).any?
  	value = bags.values.select { |x| x if !x.is_a?(Numeric) }
    raise ArgumentError if value.length > 0 
  	@bags = bags  
  end

  def add_item(item,weight)
  	section = find_section(weight) if weight > 0
  	
  end

  def find_section(weight)
  	@bags(@bags.values.max)
  end

  def status

  end
end