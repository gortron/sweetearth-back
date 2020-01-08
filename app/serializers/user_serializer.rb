class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email
  has_many :pledges
  has_many :projects, through: :pledges
end
