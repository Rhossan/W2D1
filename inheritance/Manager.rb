require_relative 'Employee'
class Manager < Employee
  attr_accessor :employees

  def initialize(name, title, salary, boss=nil)
    super(name, title, salary, boss)
    @employees = []
  end

  def add_employees(employee)
    @employees << employee
  end

  def bonus(multiplier)
    sum = 0
    # @employees.each do |emp|
    #   if emp.is_a?(Array)
    #     sum += bonus(multiplier)
    #   else
    #     sum += emp.salary
    #   end
    # end
    @employees.each do |emp|
      sum += emp.salary
      emp.employees.each do |emp2|
        sum += emp2.salary
      end
    end
    return sum
  end


end
