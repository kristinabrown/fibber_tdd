gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'cryptographer'


class CryptographerTest < Minitest::Test

  def test_it_runs
    assert true
  end

  def test_cryptographre_exists #first test small, that it exists
    assert Cryptographer
  end

  # encrypt and decrypt a string using rot13


  def test_it_encripts_a_single_letter
    cryptographer = Cryptographer.new #next step, test that you can encrypt just one letter
    assert_equal "n", cryptographer.encrypt("a")
  end

  def test_it_can_ecrypt_2_letters
    cryptographer = Cryptographer.new
    assert_equal "nq", cryptographer.encrypt("ad")
  end

  def test_it_ecrpts_a_single_char
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.encrypt_char("a")
  end

  def test_it_knows_the_alphabet
    cryptographer = Cryptographer.new
    abet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    assert_equal abet, cryptographer.alphabet
  end

  def test_it_finds_its_alphabetec_index
    cryptographer = Cryptographer.new
    assert_equal 0, cryptographer.position("a")
  end

  def test_it_rotes_13_indexes
    cryptographer = Cryptographer.new
    assert_equal 13, cryptographer.rot(0)
  end

  def test_it_finds_a_character_for_a_position
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.character(13)
  end



  # def test_it_encrypts_using_rot13
  #   engine = EncryptionEngine.new
  #   output = engine.encrypt("My Message")
  #   assert_equal "Zl Zrffntr", output
  # end
end
