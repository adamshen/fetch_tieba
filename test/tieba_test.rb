require 'minitest/autorun'
require_relative '../tieba'

class TestTieba < MiniTest::Test
  def setup
    @tieba = Tieba.new('阿森纳')
  end

  def test_serialize
    result = @tieba.serialize

    assert (result.length > 40)
  end
end