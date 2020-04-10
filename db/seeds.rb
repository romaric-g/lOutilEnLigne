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
# Tools
# Places
# Users
# Assos
# Events
# Atelier

##############


# Regions ##############################

	  Region.create(num: "01", uppername:"GUADELOUPE", displayname: "Guadeloupe")
      Region.create(num: "02", uppername:"MARTINIQUE", displayname: "Martinique")
      Region.create(num: "03", uppername:"GUYANE", displayname: "Guyane")
      Region.create(num: "04", uppername:"LA REUNION", displayname: "La Réunion")
      Region.create(num: "06", uppername:"MAYOTTE", displayname: "Mayotte")
      Region.create(num: "11", uppername:"ILE-DE-FRANCE", displayname: "Île-de-France")
      Region.create(num: "24", uppername:"CENTRE-VAL DE LOIRE", displayname: "Centre-Val de Loire")
      Region.create(num: "27", uppername:"BOURGOGNE-FRANCHE-COMTE", displayname: "Bourgogne-Franche-Comté")
      Region.create(num: "28", uppername:"NORMANDIE", displayname: "Normandie")
      Region.create(num: "32", uppername:"HAUTS-DE-FRANCE", displayname: "Hauts-de-France")
      Region.create(num: "44", uppername:"GRAND EST", displayname: "Grand Est")
      Region.create(num: "52", uppername:"PAYS DE LA LOIRE", displayname: "Pays de la Loire")
      Region.create(num: "53", uppername:"BRETAGNE", displayname: "Bretagne")
      Region.create(num: "75", uppername:"NOUVELLE-AQUITAINE", displayname: "Nouvelle-Aquitaine")
      Region.create(num: "76", uppername:"OCCITANIE", displayname: "Occitanie")
      Region.create(num: "84", uppername:"AUVERGNE-RHONE-ALPES", displayname: "Auvergne-Rhône-Alpes")
      Region.create(num: "93", uppername:"PROVENCE-ALPES-COTE D'AZUR", displayname: "Provence-Alpes-Côte d'Azur")
      Region.create(num: "94", uppername:"CORSE", displayname: "Corse")

puts "Regions OK!"

# Departements ############################## 

	  departement_list = [
["01","Ain",84],
["02","Aisne",32],
["03","Allier",84],
["04","Alpes-de-Haute-Provence",93],
["05","Hautes-Alpes",93],
["06","Alpes-Maritimes",93],
["07","Ardèche",84],
["08","Ardennes",44],
["09","Ariège",76],
["10","Aube",44],
["11","Aude",76],
["12","Aveyron",76],
["13","Bouches-du-Rhône",93],
["14","Calvados",28],
["15","Cantal",84],
["16","Charente",75],
["17","Charente-Maritime",75],
["18","Cher",24],
["19","Corrèze",75],
["21","Côte-d'Or",27],
["22","Côtes-d'Armor",53],
["23","Creuse",75],
["24","Dordogne",75],
["25","Doubs",27],
["26","Drôme",84],
["27","Eure",28],
["28","Eure-et-Loir",24],
["29","Finistère",53],
["2A","Corse-du-Sud",94],
["2B","Haute-Corse",94],
["30","Gard",76],
["31","Haute-Garonne",76],
["32","Gers",76],
["33","Gironde",75],
["34","Hérault",76],
["35","Ille-et-Vilaine",53],
["36","Indre",24],
["37","Indre-et-Loire",24],
["38","Isère",84],
["39","Jura",27],
["40","Landes",75],
["41","Loir-et-Cher",24],
["42","Loire",84],
["43","Haute-Loire",84],
["44","Loire-Atlantique",52],
["45","Loiret",24],
["46","Lot",76],
["47","Lot-et-Garonne",75],
["48","Lozère",76],
["49","Maine-et-Loire",52],
["50","Manche",28],
["51","Marne",44],
["52","Haute-Marne",44],
["53","Mayenne",52],
["54","Meurthe-et-Moselle",44],
["55","Meuse",44],
["56","Morbihan",53],
["57","Moselle",44],
["58","Nièvre",27],
["59","Nord",32],
["60","Oise",32],
["61","Orne",28],
["62","Pas-de-Calais",32],
["63","Puy-de-Dôme",84],
["64","Pyrénées-Atlantiques",75],
["65","Hautes-Pyrénées",76],
["66","Pyrénées-Orientales",76],
["67","Bas-Rhin",44],
["68","Haut-Rhin",44],
["69","Rhône",84],
["70","Haute-Saône",27],
["71","Saône-et-Loire",27],
["72","Sarthe",52],
["73","Savoie",84],
["74","Haute-Savoie",84],
["76","Seine-Maritime",28],
["77","Seine-et-Marne",11],
["78","Yvelines",11],
["79","Deux-Sèvres",75],
["80","Somme",32],
["81","Tarn",76],
["82","Tarn-et-Garonne",76],
["83","Var",93],
["84","Vaucluse",93],
["85","Vendée",52],
["86","Vienne",75],
["87","Haute-Vienne",75],
["88","Vosges",44],
["89","Yonne",27],
["90","Territoire de Belfort",27],
["91","Essonne",11],
["92","Hauts-de-Seine",11],
["93","Seine-Saint-Denis",11],
["94","Val-de-Marne",11],
["95","Val-d'Oise",11],
["971","Guadeloupe",01],
["972","Martinique",02],
["973","Guyane",03],
["974","La Réunion",04],
["976","Mayotte",06,],
	  ]

	departement_list.each do |name, numero, num|
		departemt = Departement.new(name: name, numero: numero)
		departemt.region = Region.find_by(num: num)
		departemt.save
	end

puts "Departements OK!"	     

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
	["Jardinière", nil, "Cette jardinière est faire en béton coffré et est recouverte de faïence cassée.", nil],
	["Violon et archet", nil, "Réalisation d’un violon et de son archet avec la technique de la dentelle aux fuseaux.", nil],
	["Marque-page de Paul", nil, "Création d’un marque-page bicolore en dentelle au fuseau", nil],
	["Bracelet de Marie", nil, "Création d’un bracelet en dentelle au fuseau avec attaches métalliques", nil],
	["Bougeoir de Breteil", nil, "Ce bougeoir est réalisé avec 3 éléments forgé et une tôle mise en forme de cône.", nil],
	["L’avion de Jean-Yves", nil, "Cet avion est réalisé en tôle formée et soudée. Les ailes et l’hélice sont en aluminium alors que le moteur, les roues, les écarteurs d’ailes et le pilote sont en bois.", nil],
	["Masques d’Halloween", nil, "Ces avion sont fabriqués en tôle pliée et découpée. Elle a été rivetée sur un couvercle de pot de confiture. Derrière chaque masque, une bougie a été placée.", nil],
	["Aucun objet", nil, nil, nil],

]

items_list.each do |name, media, description, build_time|
  Item.create(name: name, media: media, description: description, build_time: build_time)
end

puts "Items OK!"

# Metiers ############################
    
 # t.string "name", limit: 150
 # t.string "media", limit: 400
 # t.text "training"
 # t.text "explanation"

metiers_list = [
	["Relieur", nil, "CAP arts de la reliure, BMA art de la reliure et de la dorure, DN des métiers d’art et du design mention livre", "Le relieur, aussi parfois doreur, a comme rôle de protéger des livres en leur fabriquant des couvertures, traditionnellement pour les manuscrits mais également pour des imprimés. Sur la plupart des livres, un relieur va assembler les pages en « cahiers » et les coudre ensembles, puis fabriquer la couverture et l’assembler au livre. Mais il peut aussi travailler dans la restauration de livres anciens. Il doit d’abord démonter et nettoyer le livre, pour s’assurer qu’il est dans le meilleur état possible, puis il refait la reliure et restaure la couverture. Il travaille généralement avec des fils de lin ou de la colle, et du cuir ou d’autres matériaux similaires pour la couverture. Il est souvent appelé par des bibliothèques ou des musées. C’est un métier qui demande de la précaution et de la patience, ainsi que de la créativité, et surtout un grand amour des livres."],
	["Plâtrier", nil, "CAP plâtrier-plaquiste ou CAP staffeur ornemaniste, BAC pro aménagement-finition puis BTS finition-aménagement", "Le plâtrier intervient dans le bâtiment après la maçonnerie et la menuiserie. Il a plusieurs rôles : enduire les murs et les plafonds de couches de plâtre, pour rendre les surfaces régulières ; construire les cloisons avec des matériaux tout prêts (plaques ou carreaux de plâtre) ; faire l’isolation des bâtiments ; et enfin décorer en faisant des moulures, des corniches, des rosaces… Le plâtrier doit être minutieux et précis, et avoir un sens de la méthode."],
	["Menuisier", nil, "CAP menuisier, charpentier ou constructeur bois, Bac pro technicien menuisier, charpentier ou constructeur bois, BTS systèmes constructifs bois et habitat ou développement et réalisation bois", "Le menuisier travaille le bois sous toutes ses formes : fabrication, réparation, installation… pour créer des placards, des parquets, des escaliers, des tables, n’importe quel ouvrage de boiserie. Il peut également utiliser du PVC ou de l’aluminium, et des produits de revêtement (laque, vernis…) pour finaliser son travail. Il commence par choisir le matériau adapté puis y découpe les formes qu’il va utiliser. Il assemble ensuite les pièces en meubles, objets, etc. puis finir le projet en protégeant le meuble avec du vernis, de la laque ou du ponçage. Il doit parfois aussi restaurer des meubles anciens. Il travail la plupart du temps en atelier. C’est un métier très créatif qui est employé dans de nombreux domaines, et qui nécessite une grande habileté et un sens de l’esthétique et de la géométrie."],
	["Maçon", nil, "CAP maçon ou CAP constructeur d'ouvrages en béton armé, Bac pro technicien du bâtiment organisation et réalisation de gros œuvre, ou Bac pro interventions sur le patrimoine bâti option maçonnerie, ou BP maçon, ou BP métiers de la pierre ; BTS bâtiment", "Le maçon travaille dans le bâtiment au moment du gros œuvre. Son travail consiste à bâtir les fondations, les murs, les cloisons, et poser les sols (dalles, planchers…). Il suit un plan précis et utilise des briques, des pierres ou des parpaings pour construire, ainsi que du ciment et du mortier pour les faire tenir. Dans l’industrie, il peut aussi créer des structures, faire des coffrages et des moules. Dans un chantier, c’est lui qui garantit la qualité de la structure. Ce travail demande une grande résistance physique, mais aussi une très bonne capacité d’organisation et de gestion."],
	["Dentellier", nil, "CAP arts de la dentelle", "Le dentellier créé des motifs tissés à partir de fils de soie, de lin ou de coton, ou encore des fils d’or et d’argent, formé de vides et de pleins avec un agencement de noeuds. Il peut travailler selon deux techniques : à l’aiguille, ou au fuseau. Il se sert d’un tracé sur papier pour créer une structure de « fils de bâtis », sur laquelle il attache ensuite les points de la dentelle, soit à l’aiguille soit au fuseau. Il travaille avec des centaines, voir des milliers de fils en fonction des réalisations, et peut parfois aider à la restauration d’objets ou de vêtements anciens. C’est un travail qui demande de la patience, de la précision et de l’habileté, mais aussi beaucoup de créativité et un sens de l’esthétique."],
	["Chaudronnier", nil, " CAP réalisation en chaudronnerie industrielle, Bac professionnel technicien en chaudronnerie industrielle, BTS conception et réalisation en chaudronnerie industrielle", "Le chaudronnier réalise des ouvrages métalliques complexes à partir de fer, de cuivre, de laiton ou d’aluminium. Il découpe des plaques de métal, puis les formes à l’aide de maillets, de pinces ou de cisailles. Puis il assemble les pièces entre elles avec de la soudure, des agrafes ou des rivets. La chaudronnerie permet de créer de nombreux objets, allant de petites pièces comme des ustensiles de cuisine ou des objets de décoration, à de grosses pièces industrielles comme des carrosseries de train ou des mats d’éoliennes. C’est un métier qui demande un grand soin et de la méticulosité, ainsi qu’une forte résistance physique."],
]


metiers_list.each do |name, media, training, explanation|
  Metier.create( name: name, media: media, training: training, explanation: explanation)
end

puts "Metiers OK!"


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
	["Crochet à dentelle", nil, "Existe en différentes tailles. Il est en métal ou en plastique. Permet d’entrecroiser les fils pour tisser la dentelle."],
	["Aiguille", nil, "L’aiguille à le même rôle que le crochet. Il n’est pas nécessaire d’utiliser les deux, cela dépend de la technique utilisée par le professionnel."],
	["Ciseaux à dentelle", nil, "Les ciseaux, composés d’une lame en métal et d’un manche généralement en plastique permettent de couper les fils de dentelle."],
	["Fourche", nil, "Cet outil est composé de deux branches fixes. A l’aide d’un crochet, le dentellier va réaliser une sorte de huit avec la dentelle."],
	["Saladier", nil, "Le saladier est un récipient alimentaire permettant de mélanger des ingrédients."],
	["Casserole", nil, "La casserole permet de faire cuire des préparations."],
	["Fouet", nil, "Le fouet permet de mélanger efficacement les ingrédients à la main."],
	["Spatule", nil, "La spatule permet de racler les bords d’un saladier pour récupérer toute la préparation contenue dedans."],
	["Thermomètre", nil, "Le thermomètre permet de mesurer la température de la préparation du chocolat."],
	["Ponceuse", nil, "La ponceuse est utilisée pour polir des matériaux tels que le bois, le métal ou le PVC. Elle peut être utilisée pour des travaux grossiers mais également très précis. Sa polyvalence aide les chaudronniers dans leur conception d’objets."],
	["Brosse métallique", nil, "La brosse métallique permet au chaudronnier de nettoyer les pièces de métal rouillés. Les poils peuvent être faits avec une dureté plus ou moins importante. Ce critère doit être pris au sérieux car des poils trop durs peuvent abîmer le métal."],
	["Burin", nil, "Le burin est un outil perforant. Il permet au chaudronnier de tailler ses matériaux comme le métal ou la pierre."],
	["Clé à molette", nil, " La clé à molette permet de serrer un écrou ou une tête de vis. Elle possède une mâchoire réglable pour s’adapter à la taille de l’élément."],
]    

tools_list.each do |name, media, description|
  Tool.create(name: name, media: media, description: description)
end

puts "Tools OK!"


# Places ############################

    # t.string "name"
    # t.string "address"
    # t.string "zipcode"
    # t.string "city"
    # t.float "lat"
    # t.float "long"
    # t.string "phone"
    # t.text "infos"
    # t.index ["region_id"], name: "index_places_on_region_id"

places_list = [
	["Locaux de métallurgie (Antony)","1 avenue Léon Harmel","92160","Antony", nil, nil, "06 01 02 03 04", "Ouvert de 10h à 18h", 11],
	["Maison des associations La Chapelle-Saint-Luc","20 Avenue du Président René Coty", "10600", "La Chapelle-Saint-Luc", nil, nil, "03 25 74 18 36", "Ouverture : 07:30–12:00 14:00–19:00", 44],
	["Chambre de Métiers et de l'Artisanat de l'Aisne","83 Boulevard Jean Bouin", "02100", "Saint-Quentin", nil, nil, "03 23 06 02 02", "Ouverture : 08:30–12:00 13:30–17:30", 32],
	["Ebénisterie d'art Gepetto","51 Rue Saint-Jean", "61300", "L'Aigle", nil, nil, "02 33 34 33 84", "Ouverture : 10:30–18:30", 28],
	["Lycée Professionnel Paul Gauguin","10 Avenue de la Recherche Scientifique", "45100", "Orléans", nil, nil, "02 38 69 16 88", "Horaires : 08:00–19:30", 24],
	["Atelier OEM de Saint-Nazaire","64 rue de la Ville Halluard", "44600", "SAINT-NAZAIRE", nil, nil, "02 38 69 16 88", "Horaires : 08:00–19:30", 52],
	["KS Tapisserie-décoration","14bis Allée de Cazaux", "33470", "Gujan-Mestras", nil, nil, "06 86 71 77 95", "Accueille les ateliers de 14h à 18h", 75],
]

places_list.each do |name, address, zipcode, city, lat, long, phone, infos, num|
  locaux = Place.new( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, infos: infos)
  locaux.region_id = Region.find_by(num: num)
  locaux.save
end

puts "Places OK!"

# Users ############################

    # t.string "first_name"
    # t.string "last_name"
    # t.string "email"
    # t.string "phone"
    # t.index ["metier_id"], name: "index_users_on_metier_id"

users_list = [
	["Michel", "DUPONT", "michel.dupont@gmail.com", "06 14 95 74 30", "Plâtrier"],
	["Patrice", "HOCHENAUER", "patoche3@bbox.fr", "06 59 06 04 74", "Plâtrier"],
	["Alain", "GOUBE", "", "06 22 45 61 90", "Chaudronnier"],
	["Jean-Claude", "TRIPIED", "jc.tripied@wanadoo.fr", "06 42 90 83 14", "Maçon"],
	["Patrick", "HUME", "pat-hume@orange.fr", "07 11 85 45 33", "Menuisier"],
	["Fabienne", "BIROT-PAULY", "fabienne.birotpauly@gmail.com", "06 82 52 72 96", "Dentellier"],
	["Jean-Marc", "MAS", "jeanmarc.mas@gmail.com", "05 28 44 08 77", "Chocolatier"],
]    

users_list.each do |first_name, last_name, email, phone, metier|
		benevole = User.new(first_name: first_name, last_name: last_name, email: email, phone: phone)
		benevole.metier_id = Metier.find_by(name: metier)
		benevole.save
	end

puts "Users OK!"


# Assos ############################

    # t.string "name"
    # t.string "address"
    # t.string "zipcode"
    # t.string "city"
    # t.float "lat"
    # t.float "long"
    # t.string "phone"
    # t.string "email"
    # t.integer "members"
    # t.index ["region_id"], name: "index_assos_on_region_id"
    # t.index ["user_id"], name: "index_assos_on_user_id"

assos_list = [
	["L'Outil en Main d'ANTONY", "1 avenue Léon Harmel", "92160", "ANTONY", nil, nil, "06 33 08 98 77", "oemantony@gmail.com", 32, "92", "Michel"],
	["L'Outil en Main de LA CHAPELLE SAINT LUC", "58 avenue Aristide Briand", "10600", "La Chapelle St Luc", nil, nil, "06 59 06 04 74", "patoche3@bbox.fr", 22, "10", "Patrice"],
	["L'Outil en Main de SAINT QUENTIN", "46 rue des Glatiniers", "02100", "Saint Quentin", nil, nil, "03 23 62 31 18", nil, 17, "02", "Alain"],
	["L'Outil en Main de L'AIGLE", "Place Fulbert de Beina", "61300", "L'AIGLE", nil, nil, "06 42 90 83 14", "jc.tripied@wanadoo.fr", 21, "61", "Jean-Claude"],
	["L'Outil en Main d'ORLEANS", "79 rue du Petit Pont", "45000", "ORLEANS", nil, nil, "06 60 62 07 42", "pat-hume@orange.fr", 12, 24, "Patrick"],
	["L'Outil en Main de SAINT-NAZAIRE", "11 place de la rampe", "44600", "SAINT-NAZAIRE", nil, nil, "07 82 97 96 58", "oem.nazairien@gmail.com", 40, "44", "Fabienne"],
	["L'Outil en Main du Bassin d'ARCACHON", "9 ter rue du Stade", "33470", "LE TECH", nil, nil, "07 85 56 45 56", "loutilenmaindubassindarcachon@gmail.com", 6, "33", "Jean-Marc"],

]

assos_list.each do |name, address, zipcode, city, lat, long, phone, email, members, departement, user|
  a = Asso.new( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, email: email, members: members)
  a.departement = Departement.find_by(name: departement)
  a.user_id = User.find_by(first_name: user)
  a.save
end

puts "Assos OK!"

# Events ############################

# Ateliers ############################

    # t.string "name"
    # t.text "description"
    # t.integer "slots"
    # t.integer "min_age"
    # t.integer "max_age"
    # t.text "media"
    # t.index ["asso_id"], name: "index_ateliers_on_asso_id"
    # t.index ["item_id"], name: "index_ateliers_on_item_id"
    # t.index ["metier_id"], name: "index_ateliers_on_metier_id"
    # t.index ["place_id"], name: "index_ateliers_on_place_id"

ateliers_list = [
	["Atelier chaudronnerie et peinture", "Fabrication d’un petit moulin de décoration en tôle. Les enfants découpent les formes dans les plaques de tôle puis les plient pour leur donner la forme voulue. Il faut ensuite assembler les différentes pièces par soudage pour construire le moulin. La finition est faite avec une jolie peinture pour métal bleue.", 4, 10, 12, nil, "L'Outil en Main d'ANTONY", "Aucun objet", "Chaudronnier", "Locaux de métallurgie (Antony)"],
	["Atelier dentelle", "Création d’un violon et un archet miniature en dentelle au fuseau. On commence par dessiner le tracé qui servira de modèle à la dentelle. Les enfants apprennent à se servir d’un métier et d’un fuseau pour réaliser les trames et les vides en suivant le tracé. Ils repartiront avec une délicate création en tissu.", 6, 9, 11, nil, "L'Outil en Main du Bassin d'ARCACHON", "Violon et archet", "Dentelier", "KS Tapisserie-décoration"],
	["Atelier maçonnerie et taillage de pierre", "Construction d’une cazelle miniature en pierre de taille. Les enfants vont apprendre à construire, à petite échelle, cette cabane de berger traditionnelle en pierre sèche. On taille d’abord les pierres en petites briques, puis elles sont assemblées et collées avec du mortier pour reproduire la forme d’une cazelle ronde. ", 10, 11, 13, nil, "L'Outil en Main de SAINT-NAZAIRE", "Aucun objet", "Maçon", "Atelier OEM de Saint-Nazaire"],
	["Atelier maçonnerie et mosaïque", "Fabrication d’une jardinière pour la maison. Les enfants apprennent à couler du béton dans un moule pour créer la forme de la jardinière. Puis ils la décorent selon leurs envies avec des éclats de faïence colorée.", 10, 10, 12, nil, "L'Outil en Main de SAINT-NAZAIRE", "Jardinière", "Maçon", "Atelier OEM de Saint-Nazaire"],
	["Atelier menuiserie et peinture", "Fabrication d’un jeu de palet. Les enfants découpent des planches de contreplaquée et les assemblent pour construire le caisson, puis ils fabriquent les palets à partir de tourillons en bois de hêtre. Ils peuvent décorer le jeu en utilisant de la peinture sur bois.", 5, 9, 13, nil, "L'Outil en Main de L'AIGLE", "Jeu de palets", "Menuisier", "Ebénisterie d'art Gepetto"],
	["Atelier plâtre", "Création d’une décoration de Noël. Les enfants apprennent à fabriquer du plâtre et à le couler dans un moule pour créer une forme de bas-relief. La pièce est ensuite décorée avec de la peinture et des petits éléments en relief pour faire ressortir les images.", 12, 9, 13, nil, "L'Outil en Main de LA CHAPELLE SAINT LUC", "Crèche moulée", "Plâtrier", "Maison des associations La Chapelle-Saint-Luc"],
	["Atelier menuiserie", "Construction d’un nichoir à oiseaux pour le jardin. Les enfants apprennent à découper les formes nécessaires dans des planches de bois de pin, puis à les assembler à l’aide de clous, de chevilles ou de colle. Enfin, ils peuvent utiliser de la peinture pour décorer leur nichoir.", 5, 10, 11, nil, "L'Outil en Main de SAINT QUENTIN", "Aucun objet", "Menuisier", "Chambre de Métiers et de l'Artisanat de l'Aisne"],
] 

ateliers_list.each do |name, description, slots, min_age, max_age, media, asso, item, metier, place|
  cours = Atelier.new(name: name, description: description, slots: slots, min_age: min_age, max_age: max_age, media: media)
  cours.asso = Asso.find_by(name: asso)
  cours.item_id = Item.find_by(name: item)
  cours.metier = Metier.find_by(name: metier)
  cours.place = Place.find_by(name: place)
  cours.save
end

puts "Ateliers OK!"   


