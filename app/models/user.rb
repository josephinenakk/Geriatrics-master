class User < ActiveRecord::Base
has_one :banking_financial
has_one :client
has_one :insurance
has_one :loans_credit_card
has_one :medical_history
has_one :medication
has_one :personal_property

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
