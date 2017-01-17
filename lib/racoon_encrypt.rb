# coding:utf-8
require_relative "racoon_encrypt/version"

# たぬき暗号のクラス
# @author as-is-prog
# @attr enc_char [String] 暗号化に使う文字
class RacoonEncrypt
  # コンストラクタ
  # @param [String] enc_char 暗号化に使う文字
  def initialize(enc_char="た")
    self.enc_char = enc_char
  end

  # enc_charのアクセサメソッド
  # @param enc_char [String] セットしたい暗号化に使う文字
  # @raise 渡された文字列が一文字でない場合
  def enc_char=(enc_char)
    raise "暗号で使う文字は一文字で！" if enc_char.length != 1
    @enc_char = enc_char
  end

  # 復号メソッド
  # @param str [String] 暗号化された文字列
  # @return [String] 暗号化後の文字列
  # @example たぬきうどん
  #   racoon_encrypt.decrypt("たうたどたん") #=>"うどん"
  def decrypt(str)
    regex = Regexp.compile(@enc_char)
    str.gsub(regex,'')
  end

  # 暗号化メソッド
  # @param str [String] 暗号化したい文字列
  # @return [String] 複合された文字列
  # @raise 既にenc_charが文字列に含まれている場合
  # @example 貯蓄は大事。お金はたくわえたい。
  #   racoon_encrypt.decrypt("おかね") #=> ランダムにたくわえられた文字列
  def encrypt(str)
    raise "文字列に既に[#{@enc_char}]が含まれています！" if str.include?(@enc_char)
    ta_count = str.length * 2 / 3
    ta_array = (@enc_char*ta_count).split("")
    (str.length - ta_count).times{ta_array << ""}
    ta_array.shuffle!

    retstr = ""
    str.length.times do |i|
      retstr << (ta_array[i] + str[i])
    end
    retstr
  end
end
