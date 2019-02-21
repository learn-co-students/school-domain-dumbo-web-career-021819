# code here!
require "pry"
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    create_grade(grade) unless @roster.has_key?(grade)
    @roster[grade] << student_name
  end

  def create_grade(grade)
    @roster[grade] = []
  end

  def grade(grade)
    # binding.pry
    @roster[grade]
  end

  def sort
    @roster.map do |grade, students|
      students = students.sort!
    end
    # binding.pry
    @roster
  end
end
