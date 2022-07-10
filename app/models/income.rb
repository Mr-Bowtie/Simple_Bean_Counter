# == Schema Information
#
# Table name: incomes
#
#  id         :bigint           not null, primary key
#  amount     :integer
#  period     :integer          default("monthly")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_incomes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Income < ApplicationRecord
  belongs_to :user

  enum :period, { daily: 0, weekly: 1, bi_weekly: 2, monthly: 3 }

  validates :amount, presence: true
  validates :period, presence: true
  validates :amount, numericality: { only_integer: true }
end
