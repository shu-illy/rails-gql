# == Schema Information
#
# Table name: novels
#
#  id         :bigint           not null, primary key
#  synopsis   :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Novel < ApplicationRecord
end
