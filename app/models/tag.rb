class Tag < ActiveRecord::Base
  attr_accessible :name, :task_ids
  has_and_belongs_to_many :tasks
end
