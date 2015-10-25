class PendingPayment < ActiveRecord::Base
  belongs_to :merchant
end
