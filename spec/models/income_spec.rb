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
require 'rails_helper'

RSpec.describe Income, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
