class Email
  @@email = []

  define_method(:initialize) do |address|
    @address = address
    #@type = type
  end

  define_method(:address) do
    @address
  end
end
