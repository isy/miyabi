require 'net/http'
require 'nokogiri'

module Miyabi
  module FormatString
    def to_kanhira
      http = Net::HTTP.new('yomikatawa.com', 443)
      http.use_ssl = true
      path = File.join('/kanji', self)
      html = http.get(path).body
      Nokogiri::HTML(html).search('#yomikata tbody tr td').first.inner_text
    end

    def to_kana
      tr('ぁ-ん', 'ァ-ン')
    end

    alias to_katakana to_kana

    def to_hira
      tr('ァ-ン', 'ぁ-ん')
    end

    alias to_hiragana to_hira

    def to_roman
      s = to_kana
      KATAKANA_TO_ROMAN_MAPPING.each do |kana, roman|
        s.gsub!(kana, roman)
      end
      s
    end

    KATAKANA_TO_ROMAN_MAPPING =
      {
        'キャ' => 'kya',
        'キュ' => 'kyu',
        'キョ' => 'kyo',
        'シャ' => 'sha',
        'シュ' => 'shu',
        'ショ' => 'sho',
        'チャ' => 'cha',
        'チュ' => 'chu',
        'チョ' => 'cho',
        'ヂャ' => 'ja',
        'ヂュ' => 'ju',
        'ヂョ' => 'jo',
        'ニャ' => 'nya',
        'ニュ' => 'nyu',
        'ニョ' => 'nyo',
        'ヒャ' => 'hya',
        'ヒュ' => 'hyu',
        'ヒョ' => 'hyo',
        'ミャ' => 'mya',
        'ミュ' => 'myu',
        'ミョ' => 'myo',
        'リャ' => 'rya',
        'リュ' => 'ryu',
        'リョ' => 'ryo',
        'ギャ' => 'gya',
        'ギュ' => 'gyu',
        'ギョ' => 'gyo',
        'ジャ' => 'ja',
        'ジュ' => 'ju',
        'ジョ' => 'jo',
        'ビャ' => 'bya',
        'ビュ' => 'byu',
        'ビョ' => 'byo',
        'ピャ' => 'pya',
        'ピュ' => 'pyu',
        'ピョ' => 'pyo',
        'ヴァ' => 'va',
        'ヴィ' => 'vi',
        'ヴェ' => 've',
        'ヴォ' => 'vo',
        'ファ' => 'fa',
        'フィ' => 'fi',
        'フェ' => 'fe',
        'フォ' => 'fo',
        'ア' => 'a',
        'イ' => 'i',
        'ウ' => 'u',
        'エ' => 'e',
        'オ' => 'o',
        'カ' => 'ka',
        'キ' => 'ki',
        'ク' => 'ku',
        'ケ' => 'ke',
        'コ' => 'ko',
        'サ' => 'sa',
        'シ' => 'shi',
        'ス' => 'su',
        'セ' => 'se',
        'ソ' => 'so',
        'タ' => 'ta',
        'チ' => 'chi',
        'ツ' => 'tsu',
        'テ' => 'te',
        'ト' => 'to',
        'ナ' => 'na',
        'ニ' => 'ni',
        'ヌ' => 'nu',
        'ネ' => 'ne',
        'ノ' => 'no',
        'ハ' => 'ha',
        'ヒ' => 'hi',
        'フ' => 'fu',
        'ヘ' => 'he',
        'ホ' => 'ho',
        'マ' => 'ma',
        'ミ' => 'mi',
        'ム' => 'mu',
        'メ' => 'me',
        'モ' => 'mo',
        'ヤ' => 'ya',
        'ユ' => 'yu',
        'ヨ' => 'yo',
        'ラ' => 'ra',
        'リ' => 'ri',
        'ル' => 'ru',
        'レ' => 're',
        'ロ' => 'ro',
        'ワ' => 'wa',
        'ヰ' => 'i',
        'ヱ' => 'e',
        'ヲ' => 'o',
        'ン' => 'n',
        'ガ' => 'ga',
        'ギ' => 'gi',
        'グ' => 'gu',
        'ゲ' => 'ge',
        'ゴ' => 'go',
        'ザ' => 'za',
        'ジ' => 'ji',
        'ズ' => 'zu',
        'ゼ' => 'ze',
        'ゾ' => 'zo',
        'ダ' => 'da',
        'ヂ' => 'ji',
        'ヅ' => 'zu',
        'デ' => 'de',
        'ド' => 'do',
        'バ' => 'ba',
        'ビ' => 'bi',
        'ブ' => 'bu',
        'ベ' => 'be',
        'ボ' => 'bo',
        'パ' => 'pa',
        'ピ' => 'pi',
        'プ' => 'pu',
        'ペ' => 'pe',
        'ポ' => 'po',
        'ヴ' => 'vu',
        'ー' => '-'
      }

    private_constant :KATAKANA_TO_ROMAN_MAPPING
  end
end
