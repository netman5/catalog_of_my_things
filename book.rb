require_relative './item'
require 'date'

class Book < Item
  attr_accessor :publisher, :cover_state
  attr_reader :publish_date

  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
    @publish_date = publish_date
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
