module Miyabi
  module CheckString
    def is_hira?
      return true if self =~ /\p{hiragana}/
      false
    end

    alias hiragana? is_hira?
    alias hira? is_hira?

    def is_japanese?
      return true if self =~ /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
      false
    end

    alias japanese? is_japanese?

    def is_kana?
      return true if self =~ /\p{katakana}/
      false
    end

    alias katakana? is_kana?
    # alias kana? is_kana?

    def is_kanji?
      return true if self =~ /^[一-龥]+$/
      false
    end

    alias kanji? is_kanji?

    def is_roman?
      return true if self =~ /^[a-zA-Z]+$/
      false
    end

    alias roman? is_roman?
  end
end
