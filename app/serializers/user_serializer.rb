class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email
  has_many :pledges
  has_many :projects, through: :pledges

  def initialize(user)
    @user = user
  end

  def to_serialized_json
    @user.to_json(
      only: [:email, :created_at],
      :include => {:pledges => {only: [:amount, :created_at],
      :include => {:project => {only: [:name, :description, :category, :imgUrl, :siteUrl]
    }}}})
  end
end