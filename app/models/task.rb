class Task < ActiveRecord::Base
	attr_accessible :name, :status

	before_save :capitalize_names
	protected
		def capitalize_names
#			self.attributes['name'] = self.attributes['name'].capitalize
#			self.update_attribute(:name, 'bb')
#			ap self.attributes['name'].capitalize
#			ap self.save

#			c = Curl::Easy.perform("http://www.google.co.uk")
#			puts c.body_str
		end
end
