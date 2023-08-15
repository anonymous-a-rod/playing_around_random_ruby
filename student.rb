class Student
  def initialize(name, email, number)
    @name = name
    @email = email
    @number = number
  end

    attr_accessor :name, :email, :number
end

student = Student.new('aaron', 'awd@gmail.com', 9999999999)

puts student.name