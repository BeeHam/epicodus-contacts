class Contacts

  @@contacts = []

  define_method(:initialize) do |first_name, last_name, job, company|
    @first_name = first_name
    @last_name = last_name
    @job = job
    @company = company
    @info = []
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

  define_method(:info) do
    @info
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:add_email) do |email|
    @info.push(email)
  end

  define_method(:add_phone) do |phone|
    @info.push(phone)
  end

  define_singleton_method(:find) do |last_name|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.last_name().eql?(last_name)
        found_contact = contact
      end
    end
    found_contact
  end

end
