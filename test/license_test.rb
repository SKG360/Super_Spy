require 'minitest/autorun'
require 'minitest/pride'
require './lib/spy.rb'
require './lib/license'

class LicenseTest < Minitest::Test
  def test_if_it_exists
    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    assert_instance_of License, license_1
  end

  def test_if_license_puts_string

    spy = Spy.new("Cate Archer", 100_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy.add_license(license_1)
    spy.add_license(license_2)

    assert_equal "License to kill added successfully.", spy.add_license(license_1)
  end

  def test_the_array_of_arguments

    spy = Spy.new("Cate Archer", 100_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy.add_license(license_1)
    spy.add_license(license_2)

    assert_equal ["to kill", "to chill"], spy.license
  end

  def test_the_report_output

    spy = Spy.new("Cate Archer", 100_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy.add_license(license_1)
    spy.add_license(license_2)

    expected = "Name: Cate Archer\n Qualifications:\n - License to kill\n - License to chill\n"
    assert_equal expected, spy.report
  end

end
