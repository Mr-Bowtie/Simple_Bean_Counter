# == Schema Information
#
# Table name: ledgers
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_ledgers_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Ledger, type: :model do
  it "is valid with a title and a user" do 
    @user = User.create(
      email: "valid@test.com",
      password: "123456",
      password_confirmation: "123456",
    )
    ledger = Ledger.new(
      title: "test",
      user_id: @user.id
    )

    expect(ledger).to be_valid
  end

  it "is invalid without a title" do
    ledger = Ledger.new(
      title: nil
    )  

    ledger.valid? 
    expect(ledger.errors[:title]).to include("can't be blank")
  end
  it "is invalid without a user" do 
    ledger = Ledger.new(
      user_id: nil 
    )

    ledger.valid?
    expect(ledger.errors[:user]).to include("must exist")
  end

end
