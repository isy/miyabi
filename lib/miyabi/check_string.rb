module Miyabi
  module CheckString
    def hiragana?
      return true if self =~ /\p{hiragana}/
      false
    end

    alias is_hira? hiragana?
    alias hira? hiragana?

    def japanese?
      return true if self =~ /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
      false
    end

    alias is_japanese? japanese?

    def katakana?
      return true if self =~ /\p{katakana}/
      false
    end

    alias is_kana? katakana?

    def kanji?
      return true if self =~ /^[一-龥]+$/
      false
    end

    alias is_kanji? kanji?

    def roman?
      return true if self =~ /^[a-zA-Z]+$/
      false
    end

    alias is_roman? roman?
  end
end
