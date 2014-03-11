require './lib/addressbook'

@contacts = []
@phones = []
@emails = []
@addresses = []

def main_menu
	puts "Press 'n' to create a new contact, 'p' to add new phone number, 'e' to add an email address, 'a' to add address or press 'l' to list all of your contacts."
	puts "Press 'x' to exit."
	main_choice = gets.chomp
	if main_choice == 'n'
		add_contact
	elsif main_choice == 'p'
		add_phone
	elsif main_choice == 'e'
		add_email
	elsif main_choice == 'a'
		add_address
	elsif main_choice == 'l'
		list_contacts
	elsif main_choice == 'x'
		puts "Good-bye."
	else
		puts "Apologies, input is not a valid option."
	end
end

def add_contact
	puts "Enter full contact name:"
	user_name = gets.chomp
	@contacts << Contact.new(user_name)
	puts "Contact added."
	puts "\n\n"
	main_menu
end

def list_contacts
	puts "Here are all your contacts:"
	@contacts.each do |contact|
		puts contact.name
	end
	puts "\n\n"
	main_menu
end

def add_phone
	puts "Enter phone number:"
	user_number = gets.chomp
	@phones << Phone.new(user_number)
	puts "Phone added."
	puts "\n\n"
	main_menu
end

def list_phones
	puts "Here are all you phone numbers:"
	@phones.each do |phone|
		puts phone.number
	end
	puts "\n\n"
	main_menu
end

def add_email
	puts "Enter email:"
	user_email = gets.chomp
	@emails << Email.new(user_email)
	puts "Email added."
	puts "\n\n"
	main_menu
end

def list_emails
	puts "Here are all your email addresses:"
	@emails.each do |email|
		puts email
	end
	puts "\n\n"
	main_menu
end

def add_address
	puts "Enter address:"
	user_address = gets.chomp
	@addresses << Address.new(user_address)
	puts "Address added."
	puts "\n\n"
	main_menu
end

def list_addresses
	puts "Here are all your addresses:"
	@addresses.each do |address|
		puts address
	end
	puts "\n\n"
	main_menu
end
main_menu 