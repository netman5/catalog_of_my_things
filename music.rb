require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date, :id, :archived

  def initialize(on_spotify, publish_date, _archived)
    super(publish_date, archived: false)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    return true if super && @on_spotify == true

    false
  end
end
