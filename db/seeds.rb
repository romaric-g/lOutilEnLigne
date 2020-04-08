# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Places

places_list = [
	["Atelier de création","1 avenue Léon Harmel","92160","Antony", nil, nil, "06 01 02 03 04", "Ile-de-France", "Ouvert de 10h à 18h"]
]

places_list.each do |name, address, zipcode, city, lat, long, phone, region, infos|
  Places.create( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, region: region, infos: infos )
end

#Associations

associations_list = [
	["L'Outil en Main d'ANTONY", "1 avenue Léon Harmel", "92160", "ANTONY", nil, nil, "06 33 08 98 77", "oemantony@gmail.com", 32, "Ile-de-France"],
	["L'Outil en Main de LA CHAPELLE SAINT LUC", "58 avenue Aristide Briand", "10600", "La Chapelle St Luc", nil, nil, "06 59 06 04 74", "patoche3@bbox.fr", 22, "Grand Est"],
	["L'Outil en Main de SAINT QUENTIN", "46 rue des Glatiniers", "02100", "Saint Quentin", nil, nil, "03 23 62 31 18", nil, 17, "Hauts de france"],
	["L'Outil en Main de L'AIGLE", "Place Fulbert de Beina", "61300", "L'AIGLE", nil, nil, "06 42 90 83 14", "jc.tripied@wanadoo.fr", 21, "Normandie"],
	["L'Outil en Main d'ORLEANS", "79 rue du Petit Pont", "45000", "ORLEANS", nil, nil, "06 60 62 07 42", "pat-hume@orange.fr", 12, "Centre"],
	["L'Outil en Main de SAINT-NAZAIRE", "11 place de la rampe", "44600", "SAINT-NAZAIRE", nil, nil, "07 82 97 96 58", "oem.nazairien@gmail.com", 40, "Pays de la Loire"],
	["L'Outil en Main du Bassin d'ARCACHON", "9 ter rue du Stade", "33470", "LE TECH", nil, nil, "07 85 56 45 56", "loutilenmaindubassindarcachon@gmail.com", 6, "Nouvelle Aquitaine"],

]

associations_list.each do |name, address, zipcode, city, lat, long, phone, email, members, region|
  Associations.create( name: name, address: address, zipcode: zipcode, city: city, lat: lat, long: long, phone: phone, email: email, members: members, region: region, )
end

#Users

#Tools

#Metiers

metiers_list = [
	[]

]


#Items
#Events