require_relative "lesson"

class SystemCheck < Lesson
  attr_reader :submissions

  def initialize(name, date)
    @name = name
    @date = date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum = 0
    @submissions.each do |submission|
      sum += submission.grade.to_f
    end
    sum/@submissions.length
  end

  def did_student_complete_system_check?(student)
    @submissions.any? { |submission| submission.student == student}
  end

  def submittable?
    true
  end
end
