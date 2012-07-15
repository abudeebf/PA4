class Notebook < ActiveRecord::Base
  attr_accessible :content, :course, :free, :teacher, :title,:price,:user_id
   validates :content, presence: true
  validates :course ,presence: true
  validates :teacher ,presence: true
  validates :title ,presence: true
  has_many :payements
   default_scope order: 'notebooks.created_at DESC'
   belongs_to :user
end
