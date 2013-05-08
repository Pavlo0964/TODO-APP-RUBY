class Task < ActiveRecord::Base
	attr_accessible :name, :status, :tasklist_id, :tag_ids, :photo
    has_and_belongs_to_many :tags
    belongs_to :tasklist

    has_attached_file :photo, :styles => { :small => "150x150>" },
                      :url  => "/assets/products/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
    
    validates_attachment_presence :photo
    validates_attachment_size :photo, :less_than => 5.megabytes
    validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
 

#	before_save :capitalize_names
#	protected
#		def capitalize_names
#		self.name = '<a href=' + self.name + '>' + self.name + '</a>';
#		c = Curl::Easy.perform("http://www.google.co.uk")
#		puts c.body_str
#		end
end
