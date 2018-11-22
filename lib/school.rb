# code here!

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name
  attr_reader :roster

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|k,v| @roster[k] = v.sort}
    # @roster.to_a.sort.to_h# I still have to sort the names alphabetically
  end
end
