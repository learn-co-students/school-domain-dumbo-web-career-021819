class School

  attr_reader :name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, student_year)
    self.roster[student_year] ? self.roster[student_year] << student_name : self.roster[student_year] = [student_name]
  end

  def grade(grade_year)
    self.roster[grade_year]
  end

  def sort
    self.roster.each {|key, value| ########### WHAT?!
      self.roster[key] = value.sort
    }

    # p self.roster.sort.map {|key, value| {key => value.sort}}.class #=> array
    # self.roster.sort.map {|key, value| {key => value.sort}}.to_h # doesn't work. without to_h, gives array of hash
    # # self.roster.sort_by {|key, value| value}.to_h #sorts whole hash, not value arrays
  end
end
