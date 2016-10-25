
require './lib/receta.rb'
require "test/unit"

 
class TestCabecera < Test::Unit::TestCase
 
  def test_cabecera
    assert_equal("patatas al horno", Receta.new().mcs('patatas al horno'))
  end
  def test_simple
    assert_equal("patatas al horno", Receta.new().mcs('patatas al horno'))
  end
  def test_simple
    assert_equal("patatas al horno", Receta.new().mcs('patatas al horno'))
  end
  def test_simple
    assert_equal("patatas al horno", Receta.new().mcs('patatas al horno'))
  end
  def test_simple
    assert_equal("patatas al horno", Receta.new().mcs('patatas al horno'))
  end
 
end


