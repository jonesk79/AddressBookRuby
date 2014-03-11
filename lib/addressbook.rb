class Contact
	@@all_contacts == []

	def Contact.all
		@@all_contacts
	end

	def Contact.clear
		@@all_contacts = []
	end

	def Contact.create name
		new_contact = Contact.new name
		new_contact.save
		new_contact
	end

	def initialize name
		@name = name
	end

	def name
		@name
	end

	def save
		@@all_contacts << self
	end
end

class Phone 
	def initialize number
		@number = number
	end

	def number
		@number
	end	
end

class Email

	def initialize email
		@email = email
	end

	def email
		@email
	end
end

class Address
	def initialize address
		@address = address
	end	

	def address
		@address
	end
end


