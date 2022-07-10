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
require "rails_helper"

RSpec.describe Income, type: :model do
  before(:example) do
    @user = User.create(
      email: "valid@test.com",
      password: "123456",
      password_confirmation: "123456",
    )
    @valid_amount = 100_000
    @invalid_amount_float = 1000.10
    @invalid_amount_string = "hello"
    @valid_period = [0, 1, 2, 3].sample
    @invalid_period = 5
  end

  it "is valid with an amount, period, and user" do
    income = Income.new(
      amount: 100_000,
      period: 2,
      user_id: @user.id,
    )

    expect(income).to be_valid
  end

  it "is invalid without an amount" do
    income = Income.new(
      amount: nil,
      period: @valid_period,
      user_id: @user.id,
    )

    income.valid?
    expect(income.errors[:amount]).to include("can't be blank")
  end

  it "is invalid without a period" do
    income = Income.new(
      amount: @valid_amount,
      period: nil,
      user_id: @user.id,
    )

    income.valid?
    expect(income.errors[:period]).to include("can't be blank")
  end

  it "is invalid without a user" do
    income = Income.new(
      amount: @valid_amount,
      period: @valid_period,
      user_id: nil,
    )

    income.valid?
    expect(income.errors[:user]).to include("must exist")
  end
  context "when an amount is not an integer" do
    it "is invalid when it is a float" do
      income = Income.new(
        amount: @invalid_amount_float,
        period: @valid_period,
        user_id: @user.id,
      )

      income.valid?
      expect(income.errors[:amount]).to include("must be an integer")
    end

    it "is invalid when it is a string" do
      income = Income.new(
        amount: @invalid_amount_string,
        period: @valid_period,
        user_id: @user.id,
      )

      income.valid?
      expect(income.errors[:amount]).to include("is not a number")
    end
  end
end
