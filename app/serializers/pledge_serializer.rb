class PledgeSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  belongs_to :project
  attributes :amount
end
