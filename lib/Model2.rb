class Student
  attr_reader :name, :grade
  @@all = []

  def initialize(name, grade)
    @name = name
    @grade = grade
    @tests = []
    @@all << self
  end

  def self.all
    @@all
  end

  def tests
    @tests
  end

  def classes
    SchoolClass.all.select do |school_class|
      school_class.student == self.name
    end  
  end

  def teachers
    self.classes.map do |school_class|
      school_class.teacher
    end
  end

  def subjects
    self.classes.map do |school_class| 
      school_class.subject
    end
  end

  def take_test(subject)
    if self.subjects.include?(subject)
      @tests << [subject, "Grade:"]
    else
      "You are not enrolled in this class."
    end
  end

end
