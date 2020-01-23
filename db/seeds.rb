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

user2 = User.create(email: 'gordon.lanza@alumni.usc.edu')

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
  name: 'Cordillera Azul National Park Project', description: 'In the western Andes of Peru, this project is protecting 5200 square miles of woodland.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "1,575,268",
  content: "This project is protecting 5200 square miles (roughly the size of Connecticut) of lower-montane woodland. 321,000 people live near this protected area. Like similar efforts to reduce emission from deforestation and degradation, this project aims both to protect woodland and reduce the need for the people living there to deforest the area for economic gain. The woodlands here protect a diverse ecosystem, as they cover land from 300m altitude up to 2400m. Scientists who conducted the Rapid Biological Inventory led by The Field Museum in 2000 estimated a total of 4000 – 6000 plant species in the park, with at least 12 probably new to science. In their three weeks in the field, the scientists observed 71 large mammal species including bush dogs, spectacled bears, 10 species of primates, and enormous herds of white-lipped peccaries. Bird diversity is extremely high, with more than 590 species already registered for the park and actual species richness probably exceeding 800 species.",
  imgUrl: 'https://initiative20x20.org/sites/default/files/2018-12/Cordillera_Landscape.jpg', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/985')

project5 = Project.create(
  name: 'Keo Seima Wildlife Sanctuary', description: 'In eastern Cambodia, this project is protecting 1130 square miles of jungle.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "1,426,648",
  content: "The Seima Protection Forest (SPF) covers 1130 square miles, an area about the size of Yosemite National Park. It is located in eastern Cambodia, mainly in Mondulkiri Province with a small area extending into Kratie Province. The REDD+ Project Area covers 166,983 ha of forest in the SPF Core Protection Area. The SPF was created by a Prime Ministerial Subdecree in late 2009. The site is part of the ancestral homeland of large number of ethnic Bunong people, for whom the forest is a key source of income and central to their spiritual beliefs. The area is also a meeting place for two important ecoregions – the Annamite Mountains (notable for high levels of local endemism among evergreen forest species) and the lower Mekong dry forests (which are crucial for the survival of many species typical of lowland deciduous forests). There are 41 Globally Threatened vertebrate species recorded in the Project Area (including 4 Critically Endangered and 14 Endangered). Many of these occur in globally or regionally outstanding populations, including Asian Elephants, primates, wild cattle, several carnivores and birds such as the Giant Ibis and Green Peafowl.",
  imgUrl: 'https://www.birdguideasso.org/awsome/2018/08/Anam-Barbet-e1545626500212.jpg', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/1650')

project6 = Project.create(
  name: 'Maya Biosphere Reserve Redd+', description: 'In northern Guatemala, this project is protecting 1130 square miles of jungle.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "1,385,971",
  content: "The Guatecarbon REDD+ project is a voluntary forest carbon project that is jointly managed by the local community forestry association of the Petén (ACOFOP) and the national council for protected areas of Guatemala (CONAP) The project activities take place within the Multiple-use Zone (MUZ), 3080 square miles, which is roughly the size of the island of Puerto Rico. The project seeks to produce a net reduction in greenhouse house gas emissions from deforestation (RED) of approximately 41,579,156 tCO2e by strengthening and improving the existing model of co-management arrangements in the MUZ between local residents and the national government, and by improving zoning, land use planning and enforcement.",
  imgUrl: 'https://www.rainforest-alliance.org/sites/default/files/styles/750w_585h/public/2018-08/maya-ruins-tikal-maya-biosphere-reserve_2.jpg?itok=ViLOWAv8', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/1384')

project7 = Project.create(
  name: 'Bale Mountains Eco Region', description: 'In Ethiopia, this project is protecting 1000 square miles of highlands around the Great Rift Valley.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "1,288,821",
  content: " The Bale Mountains Eco-region is one of the two highland divisions in Ethiopia, separated from the larger western plateau of the Ethiopian highlands by the Great African Rift Valley, one of the longest and most profound chasms in Africa and the world. This project covers 1000 square miles of dry and wet woodland, an area roughly the size of Yosemite. The main central area of the Bale Eco-region is a high plateau, much of which is over 3000 m asl with several peaks rising from it. The highest peak in the eco-region is Tullu Dimtu (4377m), the second highest point in Ethiopia. South of the plateau the land falls steeply to the Harenna Escarpment and further into the Somali and Borana lowland plains, and further into the Indian Ocean. The northern area is composed of high ridges and broad valleys that gradually descend to the extensive Arsi-Bale plateaus and further into the Central Rift Valley lowlands. The mountains chain and topography with its broad flat plateau has given the Bale ecoregion spectacular scenery. The diversity of the landform has also resulted in a diverse soil formationand local climate (influenced by slope and aspect); hence diverse ecosystems and rich flora andfauna diversity. Moreover, the mountains massive of the eco-region play a vital role in climate control of the region by attracting large amount of orographic rainfalls.",
  imgUrl: 'https://static.standard.co.uk/s3fs-public/thumbnails/image/2018/10/15/16/Bale-Mountains-151018.jpg?w968', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/1340')

project8 = Project.create(
  name: 'Makira Forest Protected Area', description: 'In Madegascar, this project is protecting 1400 square miles of rainforest with a unique ecosystem.', 
  category: 'Land Use: Forest Protection', 
  emissionReduction: "1,267,231",
  content: "The Makira forest lies within the Antongil Bay landscape of north-eastern Madagascar and representsone of the largest expanses of humid forest left in the biologically rich Eastern Rainforest Biome ofMadagascar. The intact forests of Makira are a key biodiversity stronghold and a vital bridgemaintaining long-term connectivity and altitudinal gradient protection across protected areas in the north eastern region: Anjanaharibe-Sud Special Reserve and Marojejy National Park in the North; Masoala National Park in the East; and Mananara-Nord National Park and the special reserves of Marotandrano and Ambatovaky in the South. The main driver of deforestation in the Makira forest is a form of slash and burn agriculture, known as tavy, that is used to cultivate rain-fed rice rather than irrigated rice. Used principally for subsistence needs, tavy is typically practiced in upland forested areas and deforested lands are usually abandoned after one or two years of production and farmers move to another place. Other deforestation drivers are clearing for pastures, small scale or illegal mining and illegal small-scale logging. Underlying these activities are factors such as open access to forest resources, rapid population growth, poverty and insecurity that are driving unsustainable resource use.",
  imgUrl: 'https://madagascar.wcs.org/Portals/120/SliderCollection/38375/Eulemur-albifrons.jpg', 
  siteUrl: 'https://www.vcsprojectdatabase.org/#/project_details/1215')

  pledge = Pledge.create(user_id: user2.id, project_id: project2.id, amount: 1500)