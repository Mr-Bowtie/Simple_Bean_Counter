# == Schema Information
#
# Table name: info_sheets
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class InfoSheet < ApplicationRecord
  belongs_to :user
end
