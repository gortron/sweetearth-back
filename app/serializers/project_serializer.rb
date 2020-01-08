class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  has_many :pledges
  has_many :users, through: :pledges
  attributes :name, :description, :category, :imgUrl, :siteUrl
end
