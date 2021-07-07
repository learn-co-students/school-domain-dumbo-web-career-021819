
class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    new_hash = {}
    @roster.each do |num, arr|
      sorted = arr.sort
      new_hash[num] = sorted
    end
    new_hash
  end
end
