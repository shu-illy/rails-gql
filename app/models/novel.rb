# == Schema Information
#
# Table name: novels
#
#  id         :bigint           not null, primary key
#  synopsis   :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_novels_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Novel < ApplicationRecord
  belongs_to :user
end
