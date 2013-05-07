class Task < ActiveRecord::Base
	attr_accessible :name, :status, :tasklist_id, :tag_ids
    has_and_belongs_to_many :tags
    belongs_to :tasklist
#	before_save :capitalize_names
#	protected
#		def capitalize_names
#		self.name = '<a href=' + self.name + '>' + self.name + '</a>';
#		c = Curl::Easy.perform("http://www.google.co.uk")
#		puts c.body_str
#		end
end
