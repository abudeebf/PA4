class Payement < ActiveRecord::Base
  attr_accessible :cardnumber, :cardtype, :cvv, :expireat, :noteid, :user_id
  belongs_to :user
  belongs_to :notebook
end
