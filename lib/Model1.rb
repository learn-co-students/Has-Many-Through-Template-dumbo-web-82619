class Teacher
  attr_reader :name, :grade
  @@all = []

  def initialize(name, grade)
    @name = name
    @grade = grade
    @@all << self
  end

  def self.all
    @@all
  end

  def classes
    SchoolClass.all.select do |school_class|
      school_class.teacher == self.name
    end  
  end

  def students
    self.classes.map do |school_class|
      school_class.student
    end
  end

  def subjects
    self.classes.map do |school_class| 
      school_class.subject
    end
  end

  def grade_test(student_obj, grade)
    if self.subjects.include?(student_obj.tests[0][0])
      student_obj.tests[0][1] = "Grade: #{grade}"
    else
      "This student is not enrolled in any of your classes."
    end
  end

end
