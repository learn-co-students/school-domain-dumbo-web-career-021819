# code here!
class School

attr_accessor :name, :roster

  def initialize(name)
    @name =  name
    @roster = {}
  end

def add_student(name, grade)
  if @roster.has_key?(grade)
    @roster[grade] << name
  else
  @roster[grade] = []
  @roster[grade] << name
end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.map do |grade, array|
    array.sort!
  end
  @roster.sort.to_h
end

end
