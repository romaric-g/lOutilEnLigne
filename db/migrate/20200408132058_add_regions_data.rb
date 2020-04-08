class AddRegionsData < ActiveRecord::Migration[5.2]
    def up
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
    end
    def down
      Region.delete_all()
    end
end
