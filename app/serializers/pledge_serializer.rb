class PledgeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :created_at
  belongs_to :user
  belongs_to :project
end
