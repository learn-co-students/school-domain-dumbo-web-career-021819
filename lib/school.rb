class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade_number)
    @roster[grade_number] ||= []
    @roster[grade_number] << student_name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade_number, students_array|
      students_array.sort!
    end
  end

end
