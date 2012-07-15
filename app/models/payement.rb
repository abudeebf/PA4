class Payement < ActiveRecord::Base
  attr_accessible :cardnumber, :cardtype, :cvv, :expireat, :noteid, :user_id
  belongs_to :user
  belongs_to :notebook
   validates :cardnumber, presence: true
  validates :cardtype ,presence: true
  validates :cvv ,presence: true ,length: { maximum: 3 }
  validates :expireat ,presence: true
  validates :noteid ,presence: true
  validates :user_id ,presence: true
end
