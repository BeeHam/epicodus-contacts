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
end
