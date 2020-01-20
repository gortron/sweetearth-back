class PledgeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :created_at
  belongs_to :user
  belongs_to :project

  def initialize(pledge)
    @pledge = pledge
  end

  def to_serialized_json
    @pledge.to_json(
      only: [:id, :amount, :created_at],
      :include => {:project => {only: [:name]}, :user => {only: [:email]}}
    )
  end
end
