require('rspec')
require('contacts')
require('email')

describe('Email') do

  describe('#address') do
    it("returns the email address of the contact") do
      test_email = Email.new("johnsmith@123.com", "work")
      expect(test_email.address()).to(eq("johnsmith@123.com"))
    end
  end

  describe('#type') do
    it("returns the type of email address of the contact") do
      test_email = Email.new("johnsmith@123.com", "work")
      expect(test_email.type()).to(eq("work"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Email.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds an email to the array of saved emails") do
      test_email = Email.new("johnsmith@123.com", "work")
      test_email.save()
      expect(Email.all()).to(eq([test_email]))
    end
  end

  describe('.clear') do
    it("empties all of the saved emails") do
      Email.new("johnsmith@123.com", "work").save()
      Email.clear()
      expect(Email.all()).to(eq([]))
    end
  end
end
