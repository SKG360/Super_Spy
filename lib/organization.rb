require 'pry'

class Organization

  def initialize(name)
    @name = name
    @kill_monger = []
    @license_registry = []
  end

  def add_spy(spy_data)
    # return spy_data
    @kill_monger << spy_data
  end

  def spies_with_license(license)
    see_this = @kill_monger.select do |spy|
    spy.license_recall.include?(license)
    end

    return "None" if see_this == []

    see_this.map do |spy|
      "* #{spy.name}"
    end.join("\n ")
  end

  def to_kill
    spies_with_license("to kill")
  end

  def to_ill
    spies_with_license("to ill")
  end

  def to_chill
    spies_with_license("to chill")
  end

  def average_salary
     spy_salary = []
     @kill_monger.each do |spy|
       spy_salary << spy.salary
    end
    spy_salary.sum / @kill_monger.count
  end

  def lowest_salary
    lowest_salary = []
    @kill_monger.sort_by do |spy|
      lowest_salary << spy
    end
    lowest_salary[-1]
  end

  def highest_salary
    lowest_salary = []
    @kill_monger.sort_by do |spy|
      lowest_salary << spy
    end
    lowest_salary[0]
  end

end
