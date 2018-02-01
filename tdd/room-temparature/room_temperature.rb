class RoomTemperature

  def initialize(persons, ac)
    @persons = persons
    @ac = ac
  end

  def change_temperature(ac, temperature)
    @ac[ac.to_sym] = temperature if @ac[ac.to_sym]
    total_ac_temp = @ac.values.sum / @ac.count
    ok = @persons.select {|k, v| (v[0]..v[1]).include?(total_ac_temp)}.keys
    return {comfortable: ok, not_comfortable: @persons.keys - ok}
  end

  def persons
    @persons
  end

  def ac
    @ac
  end

end