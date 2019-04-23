class SystemCheckSubmission
  attr_reader :solution, :student, :grade
  extend Grade

  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = nil
  end

  def assign_grade(grade)
    if Grade::GRADES.include?(grade)
      @grade = grade
    else
      "Invalid Grade Error!"
    end
  end

  def graded?
    if !@grade.nil?
      true
    else
      false
    end
  end
end
