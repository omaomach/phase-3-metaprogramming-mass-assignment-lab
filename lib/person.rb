class Person

  def initialize attributes
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end

end

joel = {
  name: "Asiago",
  birthday: "27th February",
  handed: "left",
  height: 6.0
}

joash = {
  name: "Omao",
  weight: "70kg",
  handed: "right",
  height: "6 ft 3"
}

user1 = Person.new(joash)
puts user1.handed
