require('rspec')
require('contacts')

describe(Contacts) do
  # before() do
  #   Contacts.clear()
  # end

  describe('#first_name') do
    it("returns first name of the contact") do
      test_contact = Contacts.new("John", "Smith")
      expect(test_contact.first_name()).to(eq("John"))
    end
  end

  describe('#last_name') do
    it("returns last name of the contact") do
      test_contact = Contacts.new("John", "Smith")
      expect(test_contact.last_name()).to(eq("Smith"))
    end
  end
end
