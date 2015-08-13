require('rspec')
require('contacts')
require('email')

describe('Email') do

  describe('#address') do
    it("returns the email address of the contact") do
      test_email = Email.new("johnsmith@123.com", "work")
      # test_email.save()
      expect(test_email.address()).to(eq("johnsmith@123.com"))
    end
  end

  describe('#type') do
    it("returns the type of email address of the contact") do
      test_email = Email.new("johnsmith@123.com", "work")
      expect(test_email.type()).to(eq("work"))
    end
  end
end
