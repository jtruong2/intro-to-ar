class Horse < ActiveRecord::Base
  belongs_to :jockeys
  belongs_to :breeds

  def self.total_winnings
    Horse.sum("total_winnings")
  end

  def self.average_winnings
    Horse.average("total_winnings")
  end
end
