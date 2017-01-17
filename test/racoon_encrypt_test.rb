require_relative 'test_helper'

class RacoonEncryptTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RacoonEncrypt::VERSION
  end

  def setup
    @re = RacoonEncrypt.new
  end

  def test_encrypt
    plain_str = "なべにされるのはかんべんです"
    enc_str = @re.encrypt(plain_str)

    assert_includes(enc_str,"た")
    plain_str.chars do |c|
      assert_includes(enc_str,c)
    end
  end

  def test_encrypt_already_exist_error
    plain_str = "たぬきなべ"
    assert_raises do
      @re.encrypt(plain_str)
    end
  end

  def test_encrypt_length_error
    assert_raises do
      @re.enc_char = "たぬ"
    end
  end

  def test_decrypt
    enc_str = "たなべにたされたるのはかんたべたんですた"
    assert_equal(@re.decrypt(enc_str),"なべにされるのはかんべんです")
  end
end
