class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade|
      # I used grade[1] right here because when we use the .map method from
      # the enumerable Class for @roster (a hash), under the hood it turns a
      # hash into a an array with two values - where there would be one hash entry
      # ( {key => value , key => value} ) it becomes ( [ [key, value] , [key, value] ] ).
      # I use grade[1].sort! in order to sort the array that is the value
      # in this case and i use #sort! instead of #sort in order to make a destructive
      # change instead of a non-destructive change so that the value is kept that
      # way outside of the map.
      grade[1].sort!
    end
    @roster.sort.to_h
  end

end
