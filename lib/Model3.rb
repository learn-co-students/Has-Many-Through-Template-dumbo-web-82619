class SchoolClass
  attr_accessor :grade, :subject, :teacher, :student
  @@all = []

  def initialize(grade, subject, teacher, student)
    @grade = grade
    @subject = subject
    @teacher = teacher
    @student = student
    @@all << self
  end

  def self.all
    @@all
  end
  
end
