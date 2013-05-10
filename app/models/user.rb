class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_and_belongs_to_many :roles
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

	before_create :add_default_role
	protected
      def add_default_role
        self.user_role ='general'
      end
end
