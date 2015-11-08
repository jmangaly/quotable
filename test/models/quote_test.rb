require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

   test "unique_tag" do 
   	quote = Quote.create(:author => 'Agatha Christie', :saying => 'Good advice is always certain to be ignored, but that is no reason not to give it.')
    expected = 'AC#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
   end 
end

