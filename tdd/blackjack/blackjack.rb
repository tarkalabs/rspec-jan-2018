require "test/unit"

class BlackJack

  def initialize(start=nil)
    @actual_value ||= 0
  end

  def add_card(card)

    if(vaidate_card(card))

      return "DENIED" if @actual_value == 21
      
      card = card_value(card)
      @actual_value += card
      
      if @actual_value < 21
        "ALIVE"
      elsif @actual_value == 21
        "BLACKJACK"
      else
        "DEAD"
      end

    else
      "Invalid card"
    end
  end

  def vaidate_card(card)
    (("1".."10").to_a + ['A', 'J', 'Q', 'K']).include?(card.to_s.upcase)
  end

  def card_value(card)

    case card.to_s.upcase
    when 'J', 'Q', 'K'
      return 10
    when 'A'
      return (@actual_value <= 10) ? 11 : 1
    else
      return card.to_i
    end
  end

end

class TestBlackJack < Test::Unit::TestCase

  def test_validate_card
    blackjack = BlackJack.new
    assert_not_equal(true, blackjack.vaidate_card(14) )
    assert_equal(true, blackjack.vaidate_card(1) )
    assert_equal(true, blackjack.vaidate_card('A') )
    assert_equal("Invalid card", blackjack.add_card('M'))
  end

  def test_card_value
    blackjack = BlackJack.new
    assert_equal(11, blackjack.card_value('A'))
    assert_equal(10, blackjack.card_value('J'))
    assert_equal(10, blackjack.card_value('Q'))
    assert_equal(10, blackjack.card_value('K'))
    assert_equal(7, blackjack.card_value('7'))
    assert_equal(15, blackjack.card_value('15'))
    assert_equal("ALIVE", blackjack.add_card('A'))
    assert_equal("ALIVE", blackjack.add_card('7'))
    assert_equal(1, blackjack.card_value('A'))
  end

  def test_add_card
    blackjack = BlackJack.new
    assert_equal("ALIVE", blackjack.add_card('A'))
    assert_equal("ALIVE", blackjack.add_card('5'))
    assert_equal("BLACKJACK", blackjack.add_card('5'))
    assert_equal("DENIED", blackjack.add_card('4'))
    blackjack = BlackJack.new
    assert_equal("ALIVE", blackjack.add_card('J'))
    assert_equal("ALIVE", blackjack.add_card('Q'))
    assert_equal("DEAD", blackjack.add_card('5'))
  end

end