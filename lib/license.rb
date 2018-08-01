require 'pry'
class License

  attr_reader :license_type
  def initialize(license_type)
    @license_type = license_type
    # binding.pry
  end
end
