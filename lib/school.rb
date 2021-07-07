require "pry"

class School

attr_reader :school_name, :roster

def initialize(school_name)
  @school_name = school_name
  @roster = {}
end

def add_student(student_name, grade_level)
  @roster[grade_level] ||= []
  @roster[grade_level] << student_name
end

def grade(grade_level)
  @grade = grade_level
  @roster[grade_level]
end

def sort
  roster.each do |key, value|
    value.sort!
  end
  # clean = {}
  # roster.each do |key, element|
  #   clean[key] = element.sort
  # end
  # clean
end

end
