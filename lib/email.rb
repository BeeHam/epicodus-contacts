class Email
  @@email = []

  define_method(:initialize) do |address, type|
    @address = address
    @type = type
  end

  define_method(:address) do
    @address
  end

  define_method(:type) do
    @type
  end
end
