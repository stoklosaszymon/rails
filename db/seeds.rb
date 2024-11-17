# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

ProductCategory.create(name: "vegetables");
ProductCategory.create(name: "fruits");
ProductCategory.create(name: "detergent");
ProductCategory.create(name: "dairy");
ProductCategory.create(name: "frozen food");

Product.create({unit: "piece", name: "Bakłażan", product_category_id: 1})
Product.create({unit: "piece", name: "Batat", product_category_id: 1})
Product.create({unit: "piece", name: "Bób", product_category_id: 1})
Product.create({unit: "piece", name: "Brokuł", product_category_id: 1})
Product.create({unit: "piece", name: "Brukselka", product_category_id: 1})
Product.create({unit: "piece", name: "Burak", product_category_id: 1})
Product.create({unit: "piece", name: "Cebula", product_category_id: 1})
Product.create({unit: "piece", name: "Chrzan", product_category_id: 1})
Product.create({unit: "piece", name: "Cukinia", product_category_id: 1})
Product.create({unit: "piece", name: "Czosnek", product_category_id: 1})
Product.create({unit: "piece", name: "Dynia", product_category_id: 1})
Product.create({unit: "piece", name: "Fasola", product_category_id: 1})
Product.create({unit: "piece", name: "Fasolka szparagowa", product_category_id: 1})
Product.create({unit: "piece", name: "Groch", product_category_id: 1})
Product.create({unit: "piece", name: "Kalafior", product_category_id: 1})
Product.create({unit: "piece", name: "Kalarepa", product_category_id: 1})
Product.create({unit: "piece", name: "Kapusta", product_category_id: 1})
Product.create({unit: "piece", name: "Koper", product_category_id: 1})
Product.create({unit: "piece", name: "Kukurydza", product_category_id: 1})
Product.create({unit: "piece", name: "Marchew", product_category_id: 1})
Product.create({unit: "piece", name: "Ogórek", product_category_id: 1})
Product.create({unit: "piece", name: "Oliwka", product_category_id: 1})
Product.create({unit: "piece", name: "Papryka", product_category_id: 1})
Product.create({unit: "piece", name: "Pietruszka", product_category_id: 1})
Product.create({unit: "piece", name: "Pomidor", product_category_id: 1})
Product.create({unit: "piece", name: "Por", product_category_id: 1})
Product.create({unit: "piece", name: "Rabarbar", product_category_id: 1})
Product.create({unit: "piece", name: "Roszponka", product_category_id: 1})
Product.create({unit: "piece", name: "Rukola", product_category_id: 1})
Product.create({unit: "piece", name: "Rzodkiewka", product_category_id: 1})
Product.create({unit: "piece", name: "Sałata", product_category_id: 1})
Product.create({unit: "piece", name: "Seler", product_category_id: 1})
Product.create({unit: "piece", name: "Szalotka", product_category_id: 1})
Product.create({unit: "piece", name: "Szczypiorek", product_category_id: 1})
Product.create({unit: "piece", name: "Szparag", product_category_id: 1})
Product.create({unit: "piece", name: "Szpinak", product_category_id: 1})
Product.create({unit: "piece", name: "Ziemniak", product_category_id: 1})
Product.create({unit: "piece", name: "Agrest", product_category_id: 2})
Product.create({unit: "piece", name: "Ananas", product_category_id: 2})
Product.create({unit: "piece", name: "Arbuz", product_category_id: 2})
Product.create({unit: "piece", name: "Awokado", product_category_id: 2})
Product.create({unit: "piece", name: "Banan", product_category_id: 2})
Product.create({unit: "piece", name: "Borówka", product_category_id: 2})
Product.create({unit: "piece", name: "Brzoskwinia", product_category_id: 2})
Product.create({unit: "piece", name: "Cytryna", product_category_id: 2})
Product.create({unit: "piece", name: "Czereśnia", product_category_id: 2})
Product.create({unit: "piece", name: "Figa", product_category_id: 2})
Product.create({unit: "piece", name: "Granat", product_category_id: 2})
Product.create({unit: "piece", name: "Grejpfrut", product_category_id: 2})
Product.create({unit: "piece", name: "Gruszka", product_category_id: 2})
Product.create({unit: "piece", name: "Jabłko", product_category_id: 2})
Product.create({unit: "piece", name: "Jagoda", product_category_id: 2})
Product.create({unit: "piece", name: "Kaki", product_category_id: 2})
Product.create({unit: "piece", name: "Kiwi", product_category_id: 2})
Product.create({unit: "piece", name: "Liczi", product_category_id: 2})
Product.create({unit: "piece", name: "Limonka", product_category_id: 2})
Product.create({unit: "piece", name: "Malina", product_category_id: 2})
Product.create({unit: "piece", name: "Mandarynka", product_category_id: 2})
Product.create({unit: "piece", name: "Mango", product_category_id: 2})
Product.create({unit: "piece", name: "Melon", product_category_id: 2})
Product.create({unit: "piece", name: "Morela", product_category_id: 2})
Product.create({unit: "piece", name: "Nektarynka", product_category_id: 2})
Product.create({unit: "piece", name: "Orzech laskowy", product_category_id: 2})
Product.create({unit: "piece", name: "Orzech pistacjowy", product_category_id: 2})
Product.create({unit: "piece", name: "Orzech włoski", product_category_id: 2})
Product.create({unit: "piece", name: "Pigwa", product_category_id: 2})
Product.create({unit: "piece", name: "Pomarańcza", product_category_id: 2})
Product.create({unit: "piece", name: "Poziomka", product_category_id: 2})
Product.create({unit: "piece", name: "Porzeczka", product_category_id: 2})
Product.create({unit: "piece", name: "Śliwka", product_category_id: 2})
Product.create({unit: "piece", name: "Truskawka", product_category_id: 2})
Product.create({unit: "piece", name: "Winogrono", product_category_id: 2})
Product.create({unit: "piece", name: "Wiśnia", product_category_id: 2})
Product.create({unit: "piece", name: "Żurawina", product_category_id: 2})
Product.create({unit: "piece", name: "Mleko", product_category_id: 4})
Product.create({unit: "piece", name: "Jogurt", product_category_id: 4})
Product.create({unit: "piece", name: "Ser", product_category_id: 4})
Product.create({unit: "piece", name: "Maślanka", product_category_id: 4})
Product.create({unit: "piece", name: "Śmietana", product_category_id: 4})
Product.create({unit: "piece", name: "Kefir", product_category_id: 4})
Product.create({unit: "piece", name: "Masło", product_category_id: 4})
Product.create({unit: "piece", name: "Jajka", product_category_id: 4})
Product.create({unit: "piece", name: "Ryba", product_category_id: 5})
Product.create({unit: "piece", name: "Paluszki rybne", product_category_id: 5})
Product.create({unit: "piece", name: "Lody", product_category_id: 5})
Product.create({unit: "piece", name: "Pizza", product_category_id: 5})
Product.create({unit: "piece", name: "Pierogi", product_category_id: 5})
Product.create({unit: "piece", name: "Warzywa", product_category_id: 5})
Product.create({unit: "piece", name: "Frytki", product_category_id: 5})
Product.create({unit: "piece", name: "Szpinak", product_category_id: 5})
Product.create({unit: "piece", name: "Lasagne", product_category_id: 5})

User.create(username: "zzz",
            email: "zzz",
            password_digest: "#{User.digest('zzz')}")