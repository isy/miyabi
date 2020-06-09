require "spec_helper"

RSpec.describe "check" do
  describe "#is_hira?" do
    subject { text.is_hira? }

    let(:text) { "ひらがな" }

    context "when hiragana" do
      it { is_expected.to be_truthy }
    end

    context "when hiragana with number" do
      let(:text) { "ひらがな01234" }

      it { is_expected.to be_truthy }
    end

    context "when hiragana with em number" do
      let(:text) { "ひらがな０１２３４" }

      it { is_expected.to be_truthy }
    end

    context "when romaji" do
      let(:text) { "hiragana" }

      it { is_expected.to be_falsey }
    end

    context "when romaji with number" do
      let(:text) { "hiragana01234" }

      it { is_expected.to be_falsey }
    end

    context "when not hiragana" do
      let(:text) { "カタカナ" }

      it { is_expected.to be_falsey }
    end

    context "when includes hiragana" do
      let(:text) { "ひらがなカタカナ" }

      it { is_expected.to be_truthy }
    end

    context "when hiragana with emoji" do
      let(:text) { "😉ひらがな" }

      it { is_expected.to be_truthy }
    end

    context "when hiragana with special charactor" do
      let(:text) { "𓇼𖠋𓆫𓀤𓆉𓆡ひらがな" }

      it { is_expected.to be_truthy }
    end
  end

  describe "#is_kana?" do
    subject { text.is_kana? }

    let(:text) { "カタカナ" }

    context "when katakana" do
      it { is_expected.to be_truthy }
    end

    context "when hiragana" do
      let(:text) { "ひらがな" }

      it { is_expected.to be_falsey }
    end

    context "when romaji" do
      let(:text) { "katakana" }

      it { is_expected.to be_falsey }
    end

    context "when number" do
      let(:text) { "0123" }

      it { is_expected.to be_falsey }
    end

    context "when katakana with number" do
      let(:text) { "カキクケコ0123" }

      it { is_expected.to be_truthy }
    end

    context "when number" do
      let(:text) { "０１２３４" }

      it { is_expected.to be_falsey }
    end

    context "when katakana with em number" do
      let(:text) { "カキクケコ０１２３４" }

      it { is_expected.to be_truthy }
    end

    context "when includes katakana" do
      let(:text) { "ひらがなカタカナ" }

      it { is_expected.to be_truthy }
    end

    context "when katakana with emoji" do
      let(:text) { "😉カタカナ" }

      it { is_expected.to be_truthy }
    end

    context "when hiragana with special charactor" do
      let(:text) { "𓇼𖠋𓆫𓀤𓆉𓆡カタカナ" }

      it { is_expected.to be_truthy }
    end
  end

  describe "#is_kanji?" do
    subject { text.is_kanji? }

    let(:text) { "漢字" }

    context "when kanji" do
      it { is_expected.to be_truthy }
    end

    context "when hiragana" do
      let(:text) { "ひらがな" }

      it { is_expected.to be_falsey }
    end

    context "when kanji with hiragana" do
      let(:text) { "明日は晴れ" }

      it { is_expected.to be_falsey }
    end

    context "when kanji with katanaka" do
      let(:text) { "快晴🌞" }

      it { is_expected.to be_falsey }
    end
  end

  describe "#is_japanese?" do
    subject { text.is_japanese? }

    let(:text) { "明日は晴れ" }

    context "when japanese" do
      it { is_expected.to be_truthy }
    end

    context "when japanese with ！" do
      let(:text) { "明日は晴れ！" }

      it { is_expected.to be_falsey }
    end
  end

  describe "#is_roman?" do
    subject { text.is_roman? }

    let(:text) { "romaji" }

    context "when romaji" do
      it { is_expected.to be_truthy }
    end

    context "when includes number" do
      let(:text) { "romaji0123" }

      it { is_expected.to be_truthy }
    end

    context "when hiragana" do
      let(:text) { "ひらがな" }

      it { is_expected.to be_falsey }
    end

    context "when katakana" do
      let(:text) { "カタカナ" }

      it { is_expected.to be_falsey }
    end
  end
end