require "spec_helper"

RSpec.describe "format" do
  describe "#to_kana" do
    subject { text.to_kana }

    let(:text) { "ひらがな" }

    context "when hiragana" do
      it { is_expected.to eq "ヒラガナ" }
    end

    context "when katakana" do
      let(:text) { "カタカナ" }

      it { is_expected.to eq "カタカナ" }
    end

    context "when hiragana with katakana" do
      let(:text) { "ひらがなカタカナ" }

      it { is_expected.to eq "ヒラガナカタカナ" }
    end

    context "when romaji" do
      let(:text) { "romaji" }

      it { is_expected.to eq "romaji" }
    end

    context "when kanji" do
      let(:text) { "漢字" }

      it { is_expected.to eq "漢字" }
    end
  end

  describe "#to_hira" do
    subject { text.to_hira }

    let(:text) { "カタカナ" }

    context "when katakana" do
      it { is_expected.to eq "かたかな" }
    end

    context "when hiragana" do
      let(:text) { "ひらがな" }

      it { is_expected.to eq "ひらがな" }
    end

    context "when katakana with hiragana" do
      let(:text) { "カタカナひらがな" }

      it { is_expected.to eq "かたかなひらがな" }
    end

    context "when katakana with kanji" do
      let(:text) { "カタカナ日本語" }

      it { is_expected.to eq "かたかな日本語" }
    end
  end

  describe "#to_roman" do
    subject { text.to_roman }

    let(:text) { "ひらがな" }

    context "when hiragana" do
      it { is_expected.to eq "hiragana" }
    end

    context "when romaji with number" do
      let(:text) { "romaji01234" }

      it { is_expected.to eq text }
    end

    context "when hiragana with half size number" do
      let(:text) { "ひらがな01234" }

      it { is_expected.to eq "hiragana01234" }
    end

    context "when hiragana with em number" do
      let(:text) { "ひらがな０１２３４" }

      it { is_expected.to eq "hiragana01234" }
    end

    context "when katakana" do
      let(:text) { "カタカナ" }

      it { is_expected.to eq "katakana" }
    end

    context "when hiragana with katakana" do
      let(:text) { "ひらがなカタカナ" }

      it { is_expected.to eq "hiraganakatakana" }
    end

    context "when hiragana with kanji" do
      let(:text) { "ひらがな漢字" }

      it { is_expected.to eq "hiragana" }
    end

    context "when hiragana with romaji and kanji" do
      let(:text) { "ひらがな漢字mix" }

      it { is_expected.to eq "hiragana" }
    end

    context "when hiragana with special character" do
      let(:text) { "ひらがな！" }

      it { is_expected.to eq "hiragana" }
    end
  end
end