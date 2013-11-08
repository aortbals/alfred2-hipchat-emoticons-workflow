require 'spec_helper'

describe HipchatEmoticons do
  let(:emoticons) { HipchatEmoticons.emoticons }

  describe '.select!' do
    shared_examples_for 'select' do
      let(:expected_result) { emoticons.select { |e| e.shortcut =~ /#{term}/ } }
      subject { HipchatEmoticons.select!(emoticons, term) }

      it "returns the expected result" do
        expect(subject).to eq(expected_result)
      end
    end

    let(:term) { "mindblown" }
    it_behaves_like 'select'

    context "multiple results" do
      let(:term) { "hip" }
      it_behaves_like 'select'
    end
  end
end