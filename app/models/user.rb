# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  brands_count           :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  user_type              :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


USER_TYPES = ["athlete", "brand", "admin"]

def athlete?
  return user_type == "athlete"
end

def brand?
  return user_type == "brand"
end

def admin?
  return user_type == "admin"
end

end

