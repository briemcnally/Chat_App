# == Schema Information
#
# Table name: usernames
#
#  id         :bigint(8)        not null, primary key
#  f_name     :string
#  l_name     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Username < ApplicationRecord
end
