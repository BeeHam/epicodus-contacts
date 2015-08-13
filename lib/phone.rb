class Phone
  @@phone = []

  define_method(:initialize) do |area, number, type|
    @area = area
    @number = number
    @type = type
  end

  define_method(:area) do
    @area
  end

  define_method(:number) do
    @number
  end

  define_method(:type) do
    @type
  end

  define_singleton_method(:all) do
    @@phone
  end

  define_method(:save) do
    @@phone.push(self)
  end
end
