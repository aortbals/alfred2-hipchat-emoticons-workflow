require 'spec_helper'

describe Emoticon do
  let(:shortcut) { "(mindblown)" }
  let(:image) { "mindblown-1374883007.gif" }
  let(:data) {
    {
      "shortcut"  => shortcut,
      "image"     => image
    }
  }

  subject { Emoticon.new(data) }

  it { expect(subject.shortcut).to eq(shortcut) }
  it { expect(subject.image).to eq(image) }
  it { expect(subject.image_path).to match(/\/icons\/mindblown-1374883007.gif/) }

  describe '.import_all' do
    subject { Emoticon.import_all }

    it "imports all the emoticons" do
      Emoticon.should_receive(:new).at_least(1).times
      subject
    end
  end
end