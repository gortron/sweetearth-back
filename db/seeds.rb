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

# fields to add: copy, categories [] ?

project1 = Project.create(
  name: 'Kariba Redd+ Project', 
  description: 'In northwestern Zimbabwe, this project covers 3030 square miles of woodland and open woodland which are home to endangered species.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "6,550,464",
  content: "REDD+ stands for reducing emissions from deforestation and forest degradation. The Kariba project aims to protect 3030 square miles of woodland, an area larger than the state of Delaware. Like similar carbon projects in this category, the team responsible for Kariba are taking a two pronged approach of (a) forest protection and (b) sustainable development. The project develops other ways to meet the needs of the local economy. Instead of felling wild trees for firewood, they are cultivating trees specifically for that purpose. Instead of clearing trees for agricultural use, they are partnering with local communities to set up apiaries and teach beekeeping. The Kariba project lies within the Zambezian biome of the Zambezi basin. The major ecosystem includes mopane and miombo woodland, and is an important wildlife area. African elephants, lions, impalas, hippos, buffalo, leopard and crocodiles, along with a wide variety of birds, including the IUCN red list vulnerable species Southern Ground Hornbill, Lappet-faced Vulture, White-headed Vulture and White-headed Vulture are local to the region.",
  imgUrl: 'https://www.ltandc.org/wp-content/uploads/2017/01/Screen-Shot-2017-01-13-at-13.38.25.png', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/902')




project2 = Project.create(
  name: 'Katingan Peatland Restoration And Conservation Project', description: 'On the island of Borneo in Indonesia, this project is protecting and restoring 578 square miles of one of the largest remaining peat swamp forests.', 
  category: 'Land Use: Peatlands', 
  emissionReduction: "7,451,846",
  content: "The Katingan Project’s goal is to protect and restore 578 square miles (roughly the size of the O'ahu island in Hawaiian Archipelago) of peatland ecosystems, to offer local people sustainable sources of income, and to tackle global climate change – all based on a solid business model. The project area stores vast amounts of CO2, and plays a vital role in stabilizing water flows, preventing devastating peat fires, enriching soil nutrients and providing clean water. It is rich in biodiversity, being home to large populations of many high conservation value species, including some of the world’s most endangered; such as the Bornean Orangutan (Pongo pygmaeus) and Proboscis Monkey (Nasalis larvatus). It is surrounded by villages for which it supports traditional livelihoods including farming, fishing, and non-timber forest products harvesting.",
  imgUrl: 'https://live.staticflickr.com/4368/35976707454_5f3e0eea36_b.jpg', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/1477')

project3 = Project.create(
  name: 'Southern Cardamom Redd+ Project', description: 'In the Cardamom Mountains in southern Cambodia, this project is protecting 1070 square miles of diverse habitats.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "3,867,568",
  content: "REDD+ stands for reducing emissions from deforestation and forest degradation. The Southern Cardamom REDD+ Project, like similar carbon projects in this category, are taking a two pronged approach of (a) habitat protection and (b) sustainable development. The project's goal is to protect 1700 square miles (roughly the size of Rhode Island) of diverse habitats in southern Cambodia, and to provide people living in the era with other means of developing an economy besides deforestation and agriculture. This area is a critical watershed for the Gulf of Thailand, with a mosaic of habitats from dense evergreen and pine forests on its ridge tops to lowland melaleuca wetlands, flooded grasslands, lakes and coastal mangroves in its lowlands. It supports 52 species of IUCN Threatened birds, mammals, and reptiles including Siamese crocodile and one of Cambodia’s two viable populations of Asian elephant. ",
  imgUrl: 'http://globalconservation.org/media/projects/slider_image_5.wide.jpeg', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/1748')

project4 = Project.create(
  name: 'Cordillera Azu National Park Project', description: 'In the western Andes of Peru, this project is protecting 5200 square miles of woodland.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "1,575,268",
  content: "This project is protecting 5200 square miles (roughly the size of Connecticut) of lower-montane woodland. 321,000 people live near this protected area. Like similar efforts to reduce emission from deforestation and degradation, this project aims both to protect woodland and reduce the need for the people living there to deforest the area for economic gain. The woodlands here protect a diverse ecosystem, as they cover land from 300m altitude up to 2400m. Scientists who conducted the Rapid Biological Inventory led by The Field Museum in 2000 estimated a total of 4000 – 6000 plant species in the park, with at least 12 probably new to science. In their three weeks in the field, the scientists observed 71 large mammal species including bush dogs, spectacled bears, 10 species of primates, and enormous herds of white-lipped peccaries. Bird diversity is extremely high, with more than 590 species already registered for the park and actual species richness probably exceeding 800 species.",
  imgUrl: 'https://initiative20x20.org/sites/default/files/2018-12/Cordillera_Landscape.jpg', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/985')

  pledge = Pledge.create(user_id: user1.id, project_id: project2.id, amount: 2500)