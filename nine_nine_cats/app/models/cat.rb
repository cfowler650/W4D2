require 'action_view'

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  COLORS = ['black', 'white', 'orange', 'brown'].freeze

  validates :birth_date, :name, :sex, presence: true
  validates :color, inclusion: { in: COLORS,
    message: "%{value} is not a acceptable color" }
  

  def age
    time_ago_in_words(birth_date)
  end
  

end
