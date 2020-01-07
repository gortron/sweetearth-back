class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :imgUrl
      t.string :siteUrl

      t.timestamps
    end
  end
end
