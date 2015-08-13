require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('./lib/address')
require('./lib/email')
require('./lib/phone')

get('/') do
  erb(:index)
end

get('/new_contact') do
  erb(:new_contact)
end

get('/contacts_list') do
  @contacts = Contacts.all()
  erb(:contacts_list)
end

post('/contacts_list') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job = params.fetch('job')
  company = params.fetch('company')
  Contacts.new(first_name, last_name, job, company).save()
  @contact = Contacts.all()
  erb(:success)
end
