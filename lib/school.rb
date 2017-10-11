class School
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  attr_reader :name
  attr_accessor :roster

  def add_student(student, grade)
    if @roster.key?(grade)
       @roster[grade].push(student)
    else
      @roster[grade] = []
      @roster[grade].push(student)
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
