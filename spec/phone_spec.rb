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
end
