require 'minitest/autorun'
require 'minitest/pride'
require './lib/spy.rb'
require './lib/license'
require './lib/organization'

class OrganizationTest < Minitest::Test
  def test_if_it_exists
    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    assert_instance_of Organization, organization_1
  end

  def test_if_additional_licenses_are_added
    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    assert_equal "License to ill added successfully.", spy_3.add_license(license_3)
  end

  def test_if_organization_adds_spy
    skip
    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    assert_equal spy_1, organization_1.add_spy(spy_1)
  end

  def test_organizations_with_license_to_kill

    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    assert_equal "* Cate Archer", organization_1.to_kill
  end

  def test_organizations_two_returns_none

    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    assert_equal "None", organization_2.to_kill
  end

  def test_organizations_two_have_spies_with_license_to_ill

    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    expected = "* Jemma Simmons\n * Leo Fitz"
    assert_equal expected, organization_2.to_ill
  end

  def test_the_average_salary

    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    expected = 100000
    assert_equal expected, organization_1.average_salary
  end

  def test_the_lowest_salary_for_organization_two

    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    expected = spy_3
    assert_equal expected, organization_2.lowest_salary

  def test_the_highest_salary_for_organization_two

    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)

    spy_2.add_license(license_2)
    spy_2.add_license(license_3)

    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_3)

    expected = spy_2
    assert_equal expected, organization_2.lowest_salary
  end

end
