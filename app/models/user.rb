class User < ActiveRecord::Base
  validates :name, presence: true
  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :country

  enum role: [:user, :teacher, :admin]

  after_initialize :set_default_role, :if => :new_record?

  default_scope {order('created_at DESC') }

  def set_default_role
    self.role ||= :user
  end

  def resume
    Resume.find_or_create_by( :user_id => self.id)
  end

  def application
    Apply.where(user_id: self.id ).first
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
