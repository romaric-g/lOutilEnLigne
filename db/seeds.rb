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
	["Crèche moulée", nil, "Cette crèche est une réalisation en plâtre coulée dans un moule de polymère. Elle est ensuite décorée avec de la peinture sur plâtre pour lui donner un aspect rappelant le vitrail.", nil],
	["Etagère à épices", nil, "Réalisation d’une petite étagère en bois à épices.", nil],
	["Jeu de palets", nil, "Fabrication d'un caisson en contreplaqué de 10 mm. La traverse est découpée pour le passage du palet. Des élastiques sont fixés sur les côtés. Les petits palets sont découpés dans un tourillon en bois de hêtre. Le tout est peint.", nil],
	["Gîte pour chauves-souris", nil, "Fabrication d’un gîte pour chauves-souris. Uniquement réalisé en bois brut afin de ne pas rendre malade les chauves-souris avec des produits toxiques comme la peinture ou du vernis à bois.", nil],
	["Gîte pour chauves-souris", nil, "Fabrication d’un gîte pour chauves-souris. Uniquement réalisé en bois brut afin de ne pas rendre malade les chauves-souris avec des produits toxiques comme la peinture ou du vernis à bois.", nil],
	["Jardinière", nil, "Cette jardinière est faire en béton coffré et est recouverte de faïence cassée.", nil],

]

# Metiers ############################
    
 # t.string "name", limit: 150
 # t.string "media", limit: 400
 # t.text "training"
 # t.text "explanation"

metiers_list = [
	["Relieur", nil, "CAP arts de la reliure, BMA art de la reliure et de la dorure, DN des métiers d’art et du design mention livre", "Le relieur, aussi parfois doreur, a comme rôle de protéger des livres en leur fabriquant des couvertures, traditionnellement pour les manuscrits mais également pour des imprimés. Sur la plupart des livres, un relieur va assembler les pages en « cahiers » et les coudre ensembles, puis fabriquer la couverture et l’assembler au livre. Mais il peut aussi travailler dans la restauration de livres anciens. Il doit d’abord démonter et nettoyer le livre, pour s’assurer qu’il est dans le meilleur état possible, puis il refait la reliure et restaure la couverture. Il travaille généralement avec des fils de lin ou de la colle, et du cuir ou d’autres matériaux similaires pour la couverture. Il est souvent appelé par des bibliothèques ou des musées. C’est un métier qui demande de la précaution et de la patience, ainsi que de la créativité, et surtout un grand amour des livres."],
	["Plâtrier", nil, "CAP plâtrier-plaquiste ou CAP staffeur ornemaniste, BAC pro aménagement-finition puis BTS finition-aménagement", "Le plâtrier intervient dans le bâtiment après la maçonnerie et la menuiserie. Il a plusieurs rôles : enduire les murs et les plafonds de couches de plâtre, pour rendre les surfaces régulières ; construire les cloisons avec des matériaux tout prêts (plaques ou carreaux de plâtre) ; faire l’isolation des bâtiments ; et enfin décorer en faisant des moulures, des corniches, des rosaces… Le plâtrier doit être minutieux et précis, et avoir un sens de la méthode."],
	["Meunuisier", nil, "CAP menuisier, charpentier ou constructeur bois, Bac pro technicien menuisier, charpentier ou constructeur bois, BTS systèmes constructifs bois et habitat ou développement et réalisation bois", "Le menuisier travaille le bois sous toutes ses formes : fabrication, réparation, installation… pour créer des placards, des parquets, des escaliers, des tables, n’importe quel ouvrage de boiserie. Il peut également utiliser du PVC ou de l’aluminium, et des produits de revêtement (laque, vernis…) pour finaliser son travail. Il commence par choisir le matériau adapté puis y découpe les formes qu’il va utiliser. Il assemble ensuite les pièces en meubles, objets, etc. puis finir le projet en protégeant le meuble avec du vernis, de la laque ou du ponçage. Il doit parfois aussi restaurer des meubles anciens. Il travail la plupart du temps en atelier. C’est un métier très créatif qui est employé dans de nombreux domaines, et qui nécessite une grande habileté et un sens de l’esthétique et de la géométrie."],
	["Maçon", nil, "CAP maçon ou CAP constructeur d'ouvrages en béton armé, Bac pro technicien du bâtiment organisation et réalisation de gros œuvre, ou Bac pro interventions sur le patrimoine bâti option maçonnerie, ou BP maçon, ou BP métiers de la pierre ; BTS bâtiment", "Le maçon travaille dans le bâtiment au moment du gros œuvre. Son travail consiste à bâtir les fondations, les murs, les cloisons, et poser les sols (dalles, planchers…). Il suit un plan précis et utilise des briques, des pierres ou des parpaings pour construire, ainsi que du ciment et du mortier pour les faire tenir. Dans l’industrie, il peut aussi créer des structures, faire des coffrages et des moules. Dans un chantier, c’est lui qui garantit la qualité de la structure. Ce travail demande une grande résistance physique, mais aussi une très bonne capacité d’organisation et de gestion."],
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
	["Piloir", nil, "Le plioir permet de réaliser des travaux de finition. Le relieur s’en sert pour former, plier et frotter le papier."],
	["Couteau à parer", nil, "Le couteau à parer, ou doloire, permet au relieur d’amincir le cuir utilisé pour former la couverture d’un livre."],
	["Truelle", nil, "Une truelle est une sorte de petite pelle se maniant à la main. Elle est composée d’une lame en métal et d’un manche en bois."],
	["Taloche", nil, "Une taloche est composée d’une planche en bois ou en plastique d’environ 20 x 30 centimètres. Elle permet d’aplanir le plâtre."],
	["Cisaille à tôle", nil, "La cisaille à tôle est l’équivalent de ciseaux pour, comme son nom l’indique, découper la tôle."],
	["Pince à sertir", nil, "La pince à sertir est un outil permettant de sertir deux pièces, c’est-à-dire de les assembler par déformation."],
	["Couteau de plaquiste", nil, "Également appelé couteau à enduire, c’est outil permet au plaquiste de faire des finitions. Ils permet de mettre de l’enduit sur les éléments de superposition."],
	["Rabot", nil, "Le rabot est généralement utilisé pour aplanir le bois, ou bien y creuser des rainures. Il est composé d’une lame de métal est d’un corps fait en bois."],
	["Ciseaux à bois", nil, "Les ciseaux à bois sont des outils ancestraux permettant de sculpter le bois. Un menuisier possède toujours un lot de ciseaux à bois puisque la lame biseautée n’a pas la même taille sur chacun d’entre eux. En effet, elle doit s’adapter au travail que l’artisan souhaite réaliser."],
	["Marteau", nil, "Le marteau permet d’aplatir un élément tel qu’un clou ou n’importe quel objet en métal. Cet outil est constitué d’une tête métallique et d’un manche en bois."],
	["Vrille", nil, "La vrille est un objet permettant au menuisier de faire des trous dans le bois."],
	["Gouge", nil, "Le gouge est similaire à un ciseau à la différence que la partie métallique est concave. Il permet de sculpter le bois pour lui donner la bonne forme avant de réaliser l’objet souhaité."],
	["Massette", nil, "La massette est le marteau du maçon. Outil de percussion, il est composé d’un manche et d’une tête en métal."],
	["Ciseaux de maçon", nil, "Les ciseaux de maçon permettent de tailler les différentes matières travaillées."],
	["Bétonnière", nil, "La bétonnière est une machine permettant de malaxer le mortier.  Elle est composée d’une cuve qui contient le mortier, d’un moteur pour faire tourner la cuve et de roues pour déplacer l’ensemble."],
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
