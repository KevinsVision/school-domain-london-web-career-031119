# code here!

class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster.each do |key, value|
      if key == grade
        value
      end
    end
  end 
  
  def alphabatically
    @roster.sort_by do |key, value|
      key
    end
  end
end