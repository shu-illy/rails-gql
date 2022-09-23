# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  description :string(255)
#  name        :string(255)
#  phone       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
  has_many :novels
end
