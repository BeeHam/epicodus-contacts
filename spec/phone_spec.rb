require('rspec')
require('contacts')
require('email')
require('phone')

describe('Phone') do

  describe('#area') do
    it('returns the area code') do
      test_phone = Phone.new(503, 5551234, "work")
      expect(test_phone.area()).to(eq(503))
    end
  end

  describe('#number') do
    it('returns the phone number') do
      test_phone = Phone.new(503, 5551234, "work")
      expect(test_phone.number()).to(eq(5551234))
    end
  end

  describe('#type') do
    it('returns type of number') do
      test_phone = Phone.new(503, 5551234, "work")
      expect(test_phone.type()).to(eq("work"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a phone number to an array') do
      test_phone = Phone.new(503, 5551234, "work")
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end
end
