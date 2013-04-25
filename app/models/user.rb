class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end
end
