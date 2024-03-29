require 'spec_helper'

RSpec.describe Miyabi do
  it 'has a version number' do
    expect(Miyabi::VERSION).not_to be nil
  end
end

RSpec.describe String do
  it 'to_kanhira' do
    expect('漢字'.to_kanhira).to eq 'かんじ'
  end

  it 'to_roman' do
    expect('さーちゃーじゃん'.to_roman).to eq 'sa-cha-jan'
  end
end
