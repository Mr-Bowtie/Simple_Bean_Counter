# == Schema Information
#
# Table name: incomes
#
#  id         :bigint           not null, primary key
#  amount     :decimal(5, 2)
#  period     :integer          default("monthly")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Income < ApplicationRecord
  belongs_to :user

  enum :period, { daily: 0, weekly: 1, bi_weekly: 2, monthly: 3 }
end
