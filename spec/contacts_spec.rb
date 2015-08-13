require('rspec')
require('contacts')

describe(Contacts) do
  # before() do
  #   Contacts.clear()
  # end

  describe('#first_name') do
    it("returns first name of the contact") do
      test_contact = Contacts.new("John")
      expect(test_contact.first_name()).to(eq("John"))
    end
  end
end
