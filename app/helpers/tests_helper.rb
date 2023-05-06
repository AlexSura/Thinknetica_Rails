module TestsHelper
  TAST_LEVELS = { 0 => :easy, 1 => :elementary, 2 => :advanced, 3 => :hard }.freeze

  def test_level(test)
    TAST_LEVELS[test.level] || hero
  end

  
end
