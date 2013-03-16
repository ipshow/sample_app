class Micropost < ActiveRecord::Base
  attr_accessible :content #有且只有 content 属性是可访问的
  belongs_to :user #micropost“属于（belongs_to）”user
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  default_scope order: 'microposts.created_at DESC' #按照由新到旧这种顺序排序
end
