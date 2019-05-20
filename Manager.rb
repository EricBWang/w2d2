class Manager

  attr_reader :employees
  def initialize
    @employees = []
  end

  def bonus(multiplier)
    total_salary = 0
    employees.each { |employee| total_salary += employee.salary }
    total_salary
  end



end