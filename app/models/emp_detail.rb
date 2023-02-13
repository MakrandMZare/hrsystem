class EmpDetail < ApplicationRecord
  belongs_to :employess
  belongs_to :departments
  belongs_to :salary
  belongs_to :shift_times
end
