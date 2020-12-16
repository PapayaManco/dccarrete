require 'rails_helper'

RSpec.describe Intere, type: :model do
  it 'creates correctly' do
    intere = described_class.new(cid: 1, uid: 1, monto: 1000)
    expect(intere).to be_valid
  end

  context 'When invalid inputs are given to create a interes' do
    it "does not create bc it hasn't cid" do
      intere = described_class.new(uid: 2, monto: 2000)
      expect(intere).not_to be_valid
    end

    it "does not create bc it hasn't user id" do
      intere = described_class.new(cid: 3, monto: 3000)
      expect(intere).not_to be_valid
    end

    it "does not create bc it hasn't monto" do
      intere = described_class.new(cid: 4, uid: 4)
      expect(intere).not_to be_valid
    end
  end
end
