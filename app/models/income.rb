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
  validates :amount, numericality: { only_integer: true }
  validates :period, presence: true

  # ARGS => start_date: ActiveSupport::TimeWithZone
  # RETURN => Array, size 2, containing ActiveSupport::TimeWithZone objects 
  def generate_pay_range(start_date)
    case period
    when "daily" 
      period_end = 1.day.since(start_date)
    when "weekly"
      period_end = 1.week.since(start_date)
    when "bi_weekly"
      period_end = 2.weeks.since(start_date)
    when "monthly"
      period_end = 1.month.since(start_date)
    end

    [start_date, period_end] 
  end

end
