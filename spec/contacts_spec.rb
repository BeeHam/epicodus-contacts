require('rspec')
require('contacts')
require('email')

describe(Contacts) do
  before() do
    Contacts.clear()
  end

  describe('#first_name') do
    it("returns first name of the contact") do
      test_contact = Contacts.new("John", "Smith", "Programmer", "The Matrix")
      expect(test_contact.first_name()).to(eq("John"))
    end
  end

  describe('#last_name') do
    it("returns last name of the contact") do
      test_contact = Contacts.new("John", "Smith", "Programmer", "The Matrix")
      expect(test_contact.last_name()).to(eq("Smith"))
    end
  end

  describe('#job') do
    it("returns job title of contact") do
      test_contact = Contacts.new("John", "Smith", "Programmer", "The Matrix")
      expect(test_contact.job()).to(eq("Programmer"))
    end
  end

  describe('#company') do
    it("returns company of the contact") do
      test_contact = Contacts.new("John", "Smith", "Programmer", "The Matrix")
      expect(test_contact.company()).to(eq("The Matrix"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a new contact to the array of saved contacts") do
      test_contact = Contacts.new("John", "Smith", "Programmer", "The Matrix")
      test_contact.save()
      expect(Contacts.all()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved contacts") do
      Contacts.new("John", "Smith", "Programmer", "The Matrix").save()
      Contacts.clear()
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a contact by last name') do
      test_contact = Contacts.new("John", "Smith", "Programmer", "The Matrix")
      test_contact.save()
      expect(Contacts.find("Smith")).to(eq(test_contact))
    end
  end

end
