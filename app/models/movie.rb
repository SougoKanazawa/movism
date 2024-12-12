class Movie < ApplicationRecord
  include Hashid::Rails

  has_one_attached :movie
end
