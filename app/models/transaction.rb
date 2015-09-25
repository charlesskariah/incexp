class Transaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :trans, polymorhic: true

end
