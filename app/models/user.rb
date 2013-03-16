# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation #定义模型中哪些属性是可以访问的，即哪些属性可以被网站的用户修改,可以避免 mass assignment 漏洞
  has_secure_password #对比加密后的密码和 password_digest 是否一致，验证用户的身份
  has_many :microposts, dependent: :destroy #user “拥有多篇（has_many）”microposts,dependent保证用户的微博在删除用户的同时也会被删除
  before_save { |user| user.email = email.downcase } #回调函数 before_save，在用户存入数据库之前强行把 Email 地址转换成全小写字母形式
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 } #验证非空，长度最多50
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  #验证非空
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 } #验证非空,长度最少6
  validates :password_confirmation, presence: true #验证非空

  def feed
    # This is preliminary. See "Following users" for the full implementation.
    Micropost.where("user_id = ?", id)
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end