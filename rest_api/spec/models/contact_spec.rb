# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

describe Contact, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:contact)).to be_valid
  end

  context "validations" do
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:title) }
  end
end
