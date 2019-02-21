require 'pry'

class School

  attr_accessor :school_name, :roster, :student_name, :grade_level

  def initialize(school)
    @school = school
    @roster = {}
  end


# school = School.new("Lusher")


  def add_student(student_name, grade_level)
    if @roster[grade_level] == nil
      @roster[grade_level] = []
      @roster[grade_level] << student_name
    else @roster[grade_level] << student_name
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.map do |grade, array|
      array.sort!
    end
    @roster
  end

end
















false
