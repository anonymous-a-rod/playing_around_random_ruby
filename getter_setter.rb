class GetterSetter
  def initialize(name)
    @name = name
  end

  # getter method
  def name
    @name
  end

  # setter method
  def name=(name)
    @name = name
  end

  # attr_reader,  getter method
  # attr_writer,  setter method
  # attr_accessor, both getter and setter
end

obj1 = GetterSetter.new('aaron')

obj1.name = 'andy'

puts obj1.name