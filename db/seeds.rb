# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Reset DB
User.delete_all
Project.delete_all
Pledge.delete_all

user1 = User.create(email: 'gordon.lanza@gmail.com')
user2 = User.create(email: 'gordon.lanza@alumni.usc.edu')
project = Project.create(name: 'Carbon Sequestration', description: 'Remove carbon from the atmosphere.', category: 'sequestration', imgUrl: 'https://www.winrock.org/wp-content/uploads/2019/05/FEATURED-FLR_Calculator.jpg', siteUrl: 'https://carbonfund.org/')
project = Project.create(name: 'Reforestation', description: 'Plant trees.', category: 'reforestation', imgUrl: 'https://ensia.com/wp-content/uploads/2018/11/Feature_JapanForests_Inline.jpg', siteUrl: 'https://carbonfund.org/')
pledge = Pledge.create(user_id: user1.id, project_id: project.id, amount: 25.00)
