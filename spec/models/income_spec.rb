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
    )

    income.valid?
    expect(income.errors[:amount]).to include("can't be blank")
  end

  it "is invalid without a period" do
    income = Income.new(
      period: nil,
    )

    income.valid?
    expect(income.errors[:period]).to include("can't be blank")
  end

  it "is invalid without a user" do
    income = Income.new(
      user_id: nil,
    )
 
    income.valid?
    expect(income.errors[:user]).to include("must exist")
  end

  context "when an amount is not an integer" do
    it "is invalid when it is a float" do
      income = Income.new(
        amount: @invalid_amount_float,
      )

      income.valid?
      expect(income.errors[:amount]).to include("must be an integer")
    end

    it "is invalid when it is a string" do
      income = Income.new(
        amount: @invalid_amount_string,
      )

      income.valid?
      expect(income.errors[:amount]).to include("is not a number")
    end
  end

  context "when generating pay periods" do
    context "that are upcoming" do
      let(:income) {Income.new(amount: @valid_amount, user_id: @user.id)}
      let(:start_date) { Time.zone.now }
      it "creates a pay period range one day out from selected date" do 
        income.period = 0

        expect(income.generate_pay_range(start_date)).to eql([start_date, (start_date + 1.day)]) 
      end
      it "creates a pay period range one week out from selected date" do 
        income.period = 1

        expect(income.generate_pay_range(start_date)).to eql([start_date, (start_date + 1.week)]) 
      end
      it "creates a pay period range two weeks out from selected date" do
        income.period = 2

        expect(income.generate_pay_range(start_date)).to eql([start_date, (start_date + 2.weeks)]) 
      end
      it "creates a pay period range one month out from selected date" do
        income.period = 3

        expect(income.generate_pay_range(start_date)).to eql([start_date, (start_date + 1.month)]) 
      end
    end

    
    context "that span multiple pay dates" do 

    end

  end

end
