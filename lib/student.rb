class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(student_data)
    @name = student_data[:name]
    @age = student_data[:age]
    @scores = []
  end

  def log_score(assignment_score)
    @scores << assignment_score
  end
  
  def grade
    @scores.sum.to_f / @scores.size
  end
  
end
