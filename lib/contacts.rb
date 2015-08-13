class Contacts

  @@contacts = []

  define_method(:initialize) do |first_name, last_name, job, company|
    @first_name = first_name
    @last_name = last_name
    @job = job
    @company = company
  end

  define_method(:first_name) do
    @first_name
  end

  define_method(:last_name) do
    @last_name
  end

  define_method(:job) do
    @job
  end

  define_method(:company) do
    @company
  end

  define_singleton_method(:all) do
    @@contacts
  end
end
