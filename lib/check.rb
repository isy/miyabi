class String
  def is_hira?
    return true if self =~ /\p{hiragana}/
    false
  end

  def is_japanese?
    return true if self =~ /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
    false
  end

  def is_kana?
    return true if self =~ /\p{katakana}/
    false
  end

  def is_kanji?
    return true if self =~ /^[一-龥]+$/
    false
  end

  def is_roman?
    return true if self =~ /^[a-zA-Z]+$/
    false
  end
end