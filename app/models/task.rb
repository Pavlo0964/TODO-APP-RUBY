class Task < ActiveRecord::Base
	attr_accessible :name, :status, :Tasklist_id
    has_and_belongs_to_many :tags
    belongs_to :tasklist, foreign_key: :Tasklist_id
#	before_save :capitalize_names
#	protected
#		def capitalize_names
#		self.name = '<a href=' + self.name + '>' + self.name + '</a>';
#		c = Curl::Easy.perform("http://www.google.co.uk")
#		puts c.body_str
#		end
end
