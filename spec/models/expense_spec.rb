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
require 'rails_helper'

RSpec.describe Expense, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
