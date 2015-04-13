class LineItem < ActiveRecord::Base
  belongs_to :experience
  belongs_to :basket
end
