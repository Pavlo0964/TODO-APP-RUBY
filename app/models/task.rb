class Task < ActiveRecord::Base
	attr_accessible :name, :status, :tasklist_id, :tag_ids, :photo,  :user_id
    has_and_belongs_to_many :tags
    belongs_to :tasklist
    belongs_to :user

    has_attached_file :photo, :styles => { :small => "150x150>" },
                      :url  => "/assets/products/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
    
    validates_attachment_presence :photo
    validates_attachment_size :photo, :less_than => 5.megabytes
    validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

#	before_save :add_user_id
#	protected
#      def add_user_id
#         ap current_user
#      end
end
