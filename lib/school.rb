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
    new_hash = {}
    @roster.each do |key, value|
      new_hash[key] = value.sort
    end
      new_hash
  end
end