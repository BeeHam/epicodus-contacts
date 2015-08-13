class Contacts

  define_method(:initialize) do |first_name, last_name, job|
    @first_name = first_name
    @last_name = last_name
    @job = job
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
end
