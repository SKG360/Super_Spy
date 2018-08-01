class Spy
  attr_reader :name, :salary, :licenses, :license_recall

  def initialize(name, salary)
    @name = name
    @salary = salary
    @licenses = []
    @license_recall =[]
  end

  def add_license(license)
    @license_recall << license.license_type
    # binding.pry
    # card = @license_recall.map do |license_type|
    #   license_type
    # end
    "License #{@license_recall[0]} added successfully."
  end

  def license
    @license_recall
  end

  def report
    puts "Name: #{@name}\n Qualifications:\n - License #{@license_recall[0]}\n - License #{@license_recall[1]}\n"
    binding.pry
  end


end
