# code here!
require "pry"
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    create_grade(grade) unless self.roster.has_key?(grade)
    self.roster[grade] << student_name
  end

  def create_grade(grade)
    self.roster[grade] = []
  end

  def grade(grade)
    # binding.pry
    self.roster[grade]
  end

  def sort
    self.roster.map do |grade, students|
      students = students.sort!
    end
    # binding.pry
    self.roster
  end
end
