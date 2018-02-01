class SimpleNumber
	attr_accessor :bags

  def initialize(bags)
  	raise ArgumentError  if bags.class.to_s != "Hash" || !(bags.keys & bags.keys).any?
  	value = bags.values.select { |x| x if !x.is_a?(Numeric) }
    raise ArgumentError if value.length > 0 
  	@bags = bags
  	bags.each do |key,value| 
  	@bags[key] = {
  		total_capacity: value,
  		available_capacity: value,
  		available_items: []
  	}
  	end 
  end

  def add_item(item,weight)
  	section = find_section(weight) if weight > 0
  	if section[:section]
  		self.update_bag(section[:section], item, weight)
  		"Item Added"
  	else
  		"Item Not Added"
  	end
  end

  def update_bag(section, item, weight)
  	@bags[section][:available_capacity] -= weight
  	@bags[section][:available_items].push({item: item, weight: weight})
  end

  def find_section(weight)
  	bag ={section: nil, weight: 0}
  	@bags.each do |key,value|
	  	if @bags[key][:available_capacity] > weight && bag[:weight] < @bags[key][:available_capacity]
	  		bag[:section] = key
	  		bag[:weight] = @bags[key][:available_capacity]
	  	end
  	 end
  	bag
  end

  def status
  	self.bags
  end
end


# obj = SimpleNumber.new({"section1": 100,"section2": 80,"section3": 200})
# obj.add_item("laptop", 30)
# obj.add_item("laptop", 30)
# obj.add_item("laptop", 30)
# obj.add_item("laptop", 30)
# obj.add_item("laptop", 30)
# obj.add_item("laptop", 30)
# obj.add_item("laptop", 30)
# puts obj.add_item("laptop", 300)
# p obj.bags