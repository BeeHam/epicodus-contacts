class Address
  attr_reader(:street, :city, :state, :zip, :type)
  @@address = []

  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type)
  end
end
