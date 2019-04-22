class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def postgrad_kickoff
    @end_date + 4
  end

  def enroll(student)
    if !@students.include?(student)
      @students << student
    end
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    result = "Cohort: #{self.title}" + "\n" + "--------------------" + "\n"
    @students.each do |student|
      result += "#{student.name} #{student.email}\n"
    end
    result    
  end
end
