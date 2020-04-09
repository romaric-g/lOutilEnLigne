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
	["Violon et archet", nil, "Réalisation d’un violon et de son archet avec la technique de la dentelle aux fuseaux.", nil],
	["Marque-page de Paul", nil, "Création d’un marque-page bicolore en dentelle au fuseau", nil],
	["Bracelet de Marie", nil, "Création d’un bracelet en dentelle au fuseau avec attaches métalliques", nil],
	["Bougeoir de Breteil", nil, "Ce bougeoir est réalisé avec 3 éléments forgé et une tôle mise en forme de cône.", nil],
	["L’avion de Jean-Yves", nil, "Cet avion est réalisé en tôle formée et soudée. Les ailes et l’hélice sont en aluminium alors que le moteur, les roues, les écarteurs d’ailes et le pilote sont en bois.", nil],
	["Masques d’Halloween", nil, "Ces avion sont fabriqués en tôle pliée et découpée. Elle a été rivetée sur un couvercle de pot de confiture. Derrière chaque masque, une bougie a été placée.", nil],

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
	["Meunuisier", nil, "CAP menuisier, charpentier ou constructeur bois, Bac pro technicien menuisier, charpentier ou constructeur bois, BTS systèmes constructifs bois et habitat ou développement et réalisation bois", "Le menuisier travaille le bois sous toutes ses formes : fabrication, réparation, installation… pour créer des placards, des parquets, des escaliers, des tables, n’importe quel ouvrage de boiserie. Il peut également utiliser du PVC ou de l’aluminium, et des produits de revêtement (laque, vernis…) pour finaliser son travail. Il commence par choisir le matériau adapté puis y découpe les formes qu’il va utiliser. Il assemble ensuite les pièces en meubles, objets, etc. puis finir le projet en protégeant le meuble avec du vernis, de la laque ou du ponçage. Il doit parfois aussi restaurer des meubles anciens. Il travail la plupart du temps en atelier. C’est un métier très créatif qui est employé dans de nombreux domaines, et qui nécessite une grande habileté et un sens de l’esthétique et de la géométrie."],
	["Maçon", nil, "CAP maçon ou CAP constructeur d'ouvrages en béton armé, Bac pro technicien du bâtiment organisation et réalisation de gros œuvre, ou Bac pro interventions sur le patrimoine bâti option maçonnerie, ou BP maçon, ou BP métiers de la pierre ; BTS bâtiment", "Le maçon travaille dans le bâtiment au moment du gros œuvre. Son travail consiste à bâtir les fondations, les murs, les cloisons, et poser les sols (dalles, planchers…). Il suit un plan précis et utilise des briques, des pierres ou des parpaings pour construire, ainsi que du ciment et du mortier pour les faire tenir. Dans l’industrie, il peut aussi créer des structures, faire des coffrages et des moules. Dans un chantier, c’est lui qui garantit la qualité de la structure. Ce travail demande une grande résistance physique, mais aussi une très bonne capacité d’organisation et de gestion."],
	["Dentellier", nil, "CAP arts de la dentelle", "Le dentellier créé des motifs tissés à partir de fils de soie, de lin ou de coton, ou encore des fils d’or et d’argent, formé de vides et de pleins avec un agencement de noeuds. Il peut travailler selon deux techniques : à l’aiguille, ou au fuseau. Il se sert d’un tracé sur papier pour créer une structure de « fils de bâtis », sur laquelle il attache ensuite les points de la dentelle, soit à l’aiguille soit au fuseau. Il travaille avec des centaines, voir des milliers de fils en fonction des réalisations, et peut parfois aider à la restauration d’objets ou de vêtements anciens. C’est un travail qui demande de la patience, de la précision et de l’habileté, mais aussi beaucoup de créativité et un sens de l’esthétique."],
	["Chaudronnier", nil, " CAP réalisation en chaudronnerie industrielle, Bac professionnel technicien en chaudronnerie industrielle, BTS conception et réalisation en chaudronnerie industrielle", "Le chaudronnier réalise des ouvrages métalliques complexes à partir de fer, de cuivre, de laiton ou d’aluminium. Il découpe des plaques de métal, puis les formes à l’aide de maillets, de pinces ou de cisailles. Puis il assemble les pièces entre elles avec de la soudure, des agrafes ou des rivets. La chaudronnerie permet de créer de nombreux objets, allant de petites pièces comme des ustensiles de cuisine ou des objets de décoration, à de grosses pièces industrielles comme des carrosseries de train ou des mats d’éoliennes. C’est un métier qui demande un grand soin et de la méticulosité, ainsi qu’une forte résistance physique."],
]


metiers_list.each do |name, media, training, explanation|
  Metier.create( name: name, media: media, training: training, explanation: explanation)
end

puts "Metiers OK!"

# Places ############################

places_list = [
	["Atelier de création","1 avenue Léon Harmel","92160","Antony", nil, nil, "06 01 02 03 04", "Ile-de-France", "Ouvert de 10h à 18h"]
]

places_list.each do |name, address, zipcode, city, lat, long, phone, region, infos|
  Places.create( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, region: region, infos: infos )
end

puts "Places OK!"

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

# Users ############################

    # t.string "first_name"
    # t.string "last_name"
    # t.string "email"
    # t.string "phone"
    # t.index ["metier_id"], name: "index_users_on_metier_id"


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
