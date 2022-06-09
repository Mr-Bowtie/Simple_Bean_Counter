# == Schema Information
#
# Table name: expenses
#
#  id             :bigint           not null, primary key
#  amount         :decimal(, )
#  due_day_number :integer
#  recurring      :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Expense < ApplicationRecord
  belongs_to :user
end
