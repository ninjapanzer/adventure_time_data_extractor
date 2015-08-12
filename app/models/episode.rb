class Episode < ActiveRecord::Base
  validates :number, uniqueness: {scope: [:title, :season]}
end
