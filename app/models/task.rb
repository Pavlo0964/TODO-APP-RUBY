class Task < ActiveRecord::Base
	attr_accessible :name, :status

	before_save :capitalize_names
	protected
		def capitalize_names
		self.name = '<a href=' + self.name + '>' + self.name + '</a>';
#		c = Curl::Easy.perform("http://www.google.co.uk")
#		puts c.body_str
		end
end
