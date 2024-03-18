require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutTrueAndFalse < Neo::Koan
  def truth_value(condition)
    if condition
      :true_stuff
    else
      :false_stuff
    end
  end

  def test_true_is_treated_as_true
    assert_equal true, true, truth_value(true)
  end

  def test_false_is_treated_as_false
    assert_equal false, false, truth_value(false)
  end

  def test_nil_is_treated_as_false_too
    assert_equal nil, nil, truth_value(nil)
  end

  def test_everything_else_is_treated_as_true
    assert_equal 1, 1, truth_value(1)
    assert_equal 0, 0, truth_value(0)
    assert_equal [], [], truth_value([])
    assert_equal ({}), ({}), truth_value({})
    assert_equal "hello", "hello", truth_value("Strings")
    assert_equal "", "", truth_value("")
  end

end
