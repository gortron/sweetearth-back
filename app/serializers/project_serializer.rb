class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :category, :emissionReduction, :content, :imgUrl, :siteUrl
  has_many :pledges
  has_many :users, through: :pledges

  def initialize(project)
    @project = project
  end

  def to_serialized_json
    @project.to_json(
      only: [:name, :description, :category, :emissionReduction, :content, :imgUrl, :siteUrl],
      :include => {:pledges => {only: [:amount, :created_at],
      :include => {:user => {only: [:email]
    }}}})
  end
  
end
