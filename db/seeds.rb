# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

##############

# Ordre :

# Items
# Metiers
# Places
# Tools
# Users
# Assos
# Events
# Atelier

##############

# Items ##############################

  #  t.string "name"
  #  t.string "media"
  #  t.text "description"
  #  t.time "build_time"

items_list = [
	[]
]

# Metiers ############################
    
 # t.string "name", limit: 150
 # t.string "media", limit: 400
 # t.text "training"
 # t.text "explanation"

metiers_list = [
	["Relieur", nil, "CAP arts de la reliure, BMA art de la reliure et de la dorure, DN des métiers d’art et du design mention livre", "Le relieur, aussi parfois doreur, a comme rôle de protéger des livres en leur fabriquant des couvertures, traditionnellement pour les manuscrits mais également pour des imprimés. Sur la plupart des livres, un relieur va assembler les pages en « cahiers » et les coudre ensembles, puis fabriquer la couverture et l’assembler au livre. Mais il peut aussi travailler dans la restauration de livres anciens. Il doit d’abord démonter et nettoyer le livre, pour s’assurer qu’il est dans le meilleur état possible, puis il refait la reliure et restaure la couverture. Il travaille généralement avec des fils de lin ou de la colle, et du cuir ou d’autres matériaux similaires pour la couverture. Il est souvent appelé par des bibliothèques ou des musées. C’est un métier qui demande de la précaution et de la patience, ainsi que de la créativité, et surtout un grand amour des livres."]
]

# Places ############################

places_list = [
	["Atelier de création","1 avenue Léon Harmel","92160","Antony", nil, nil, "06 01 02 03 04", "Ile-de-France", "Ouvert de 10h à 18h"]
]

places_list.each do |name, address, zipcode, city, lat, long, phone, region, infos|
  Places.create( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, region: region, infos: infos )
end

# Tools ############################

    # t.string "name"
    # t.string "media"
    # t.text "description"

tools_list = [
	["Presse", nil, "La presse est un outil utilisé par le relieur pour compresser les pages d’un livre."],
	["Ciseaux", nil, "Les ciseaux, composés d’une lame en métal et d’un manche généralement en plastique permettent de couper des feuilles de papier."],
	["Massicot", nil, "Le massicot permet de couper de nombreuses feuilles de papier en une seule fois. En effet, il faut placer toutes ces feuilles sur la partie horizontale et utiliser la lame."],
]    

# Users ############################


# Assos ############################

associations_list = [
	["L'Outil en Main d'ANTONY", "1 avenue Léon Harmel", "92160", "ANTONY", nil, nil, "06 33 08 98 77", "oemantony@gmail.com", 32, "Ile-de-France"],
	["L'Outil en Main de LA CHAPELLE SAINT LUC", "58 avenue Aristide Briand", "10600", "La Chapelle St Luc", nil, nil, "06 59 06 04 74", "patoche3@bbox.fr", 22, "Grand Est"],
	["L'Outil en Main de SAINT QUENTIN", "46 rue des Glatiniers", "02100", "Saint Quentin", nil, nil, "03 23 62 31 18", nil, 17, "Hauts de france"],
	["L'Outil en Main de L'AIGLE", "Place Fulbert de Beina", "61300", "L'AIGLE", nil, nil, "06 42 90 83 14", "jc.tripied@wanadoo.fr", 21, "Normandie"],
	["L'Outil en Main d'ORLEANS", "79 rue du Petit Pont", "45000", "ORLEANS", nil, nil, "06 60 62 07 42", "pat-hume@orange.fr", 12, "Centre"],
	["L'Outil en Main de SAINT-NAZAIRE", "11 place de la rampe", "44600", "SAINT-NAZAIRE", nil, nil, "07 82 97 96 58", "oem.nazairien@gmail.com", 40, "Pays de la Loire"],
	["L'Outil en Main du Bassin d'ARCACHON", "9 ter rue du Stade", "33470", "LE TECH", nil, nil, "07 85 56 45 56", "loutilenmaindubassindarcachon@gmail.com", 6, "Nouvelle Aquitaine"],

]

assos_list.each do |name, address, zipcode, city, lat, long, phone, email, members, region|
  Assos.create( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, email: email, members: members, region: region, )
end

# Events ############################

# Ateliers ############################
