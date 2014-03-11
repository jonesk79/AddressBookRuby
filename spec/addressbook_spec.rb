require 'rspec'
require 'addressbook'

describe Contact do
	before do
		Contact.clear
	end

	it 'initializes the contact creation' do
		test_contact = Contact.new('Jackie Robinson')
		test_contact.should be_an_instance_of Contact
	end

	it 'creates the contact name' do
		test_contact = Contact.new('Jackie Robinson')
		test_contact.should eq 'Jackie Robinson'
	end

	describe '.all' do
		it 'is empty at first' do
			Contact.all.should eq []
		end

		it 'saves the contact' do
			test_contact = Contact.new('Jackie Robinson')
			test_contact.save
			Contact.all.should eq [test_contact]
		end
	end

	describe '.clear' do
		it 'empties out all the saved contacts' do
			Contact.new('Mary Poppins').save
			Contact.clear
			Contact.all.should eq []
		end
	end

	describe '.create' do
		it 'makes a new instance of Contact' do
			test_contact = Contact.create("Nia Long")
			test_contact.should be_an_instance_of Contact
		end

		it 'saves the Task' do
			test_contact = Contact.create("Nia Long")
			Contact.all.should eq [test_contact]
		end
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
		test_address = Address.new('street', 'city', 'state')
		test_address.should eq '124 Piedmont Park, Atlanta, GA'
	end
end
