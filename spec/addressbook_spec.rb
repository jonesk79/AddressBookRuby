require 'rspec'
require 'addressbook'

describe 'Addressbook' do
	it 'initializes the contact creation' do
		test_addressbook = Addressbook.new("Mary Poppins")
		test_addressbook.should be_an_instance of Addressbook
	end

	it 'creates the contact name' do
		test_addressbook = Addressbook.new("Mary Poppins")
		test_addressbook.should eq "Mary Poppins"
	end
end