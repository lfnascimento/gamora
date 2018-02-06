require 'rails_helper'

RSpec.describe Offer, type: :model do

  subject { build(:offer) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:advertiser_name) }
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:starts_at) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
    it { is_expected.to validate_uniqueness_of(:advertiser_name) }

    context 'when its url is invalid' do
      before { allow(subject).to receive(:url) { 'http//www.google.com' } }

      it { is_expected.to_not be_valid }
    end
  end

  describe 'enums' do
    it { is_expected.to define_enum_for(:status).with(disabled: 0, enabled: 1) }
  end

  describe '#active!' do
    context 'when it can be enabled' do

      it { expect(subject.active!).to be_truthy }
    end

    context 'when it cannot be enabled' do
      subject { build(:offer, starts_at: Date.current - 2.months, ends_at: Date.current - 1.months) }

      it { expect(subject.active!).to be_falsy }
    end
  end

  describe 'scopes' do
    describe '.active' do
      context 'when there are active offers' do
        let!(:offer) { create(:offer, status: :enabled) }

        it { expect(described_class.active).to_not be_empty }
      end

      context 'when there are not active offers' do
        let!(:offer) { create(:offer, status: :disabled) }

        it { expect(described_class.active).to be_empty }
      end
    end
  end

end
