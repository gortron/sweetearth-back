class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :category, :emissionReduction, :content, :imgUrl, :siteUrl
  has_many :pledges
  has_many :users, through: :pledges

  
end
