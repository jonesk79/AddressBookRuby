require 'rspec'
require 'addressbook'

describe Addressbook do
	it 'initializes the contact creation' do
		test_addressbook = Addressbook.new('Mary Poppins')
		test_addressbook.should be_an_instance of Addressbook
	end

	it 'creates the contact name' do
		test_addressbook = Addressbook.new('Mary Poppins')
		test_addressbook.should eq 'Mary Poppins'
	end
end

describe Phone do
	it 'initializes the phone number creation' do
		test_phone = Phone.new('4046605700')
		test_phone.should be_an_instance_of Phone
	end

	it 'creates the phone number' do
		test_phone = Phone.new('4046605700')
		test_phone.should eq '4046605700'
	end
end

describe Email do
	it 'initializes the email creation' do
		test_email = Email.new('kemonte.jones@gmail.com')
		test_email.should be_an_instance_of Email
	end

	it 'creates the email address' do
		test_email = Email.new('kemonte.jones@gmail.com')
		test_email.should eq 'kemonte.jones@gmail.com'
	end
end

describe Address do
	it 'initializes the address creation' do
		test_address = Address.new('124 Park Ave, Atlanta, GA')
		test_address.should be_an_instance_of Address
	end

	it 'creates the address address' do
		test_address = Address.new('124 Piedmont Park, Atlanta, GA')
		test_address.should eq '124 Piedmont Park, Atlanta, GA'
	end
end
