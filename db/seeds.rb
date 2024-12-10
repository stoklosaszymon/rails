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

Product.create({unit: "piece", name: "Cebula", product_category_id: 1})
Product.create({unit: "piece", name: "Czosnek", product_category_id: 1})
Product.create({unit: "piece", name: "Kapusta", product_category_id: 1})
Product.create({unit: "piece", name: "Koperek", product_category_id: 1})
Product.create({unit: "piece", name: "Ogórek", product_category_id: 1})
Product.create({unit: "piece", name: "Pietruszka", product_category_id: 1})
Product.create({unit: "piece", name: "Pomidor", product_category_id: 1})
Product.create({unit: "piece", name: "Rukola", product_category_id: 1})
Product.create({unit: "piece", name: "Rzodkiewka", product_category_id: 1})
Product.create({unit: "piece", name: "Sałata", product_category_id: 1})
Product.create({unit: "piece", name: "Seler", product_category_id: 1})
Product.create({unit: "piece", name: "Szczypiorek", product_category_id: 1})
Product.create({unit: "piece", name: "Ananas", product_category_id: 2})
Product.create({unit: "piece", name: "Arbuz", product_category_id: 2})
Product.create({unit: "piece", name: "Banan", product_category_id: 2})
Product.create({unit: "piece", name: "Cytryna", product_category_id: 2})
Product.create({unit: "piece", name: "Mleko", product_category_id: 4})
Product.create({unit: "piece", name: "Jogurt", product_category_id: 4})
Product.create({unit: "piece", name: "Ser", product_category_id: 4})
Product.create({unit: "piece", name: "Masło", product_category_id: 4})
Product.create({unit: "piece", name: "Jajka", product_category_id: 4})
Product.create({unit: "piece", name: "Ryba", product_category_id: 5})
Product.create({unit: "piece", name: "Lody", product_category_id: 5})
Product.create({unit: "piece", name: "Frytki", product_category_id: 5})
Product.create({unit: "piece", name: "Szpinak", product_category_id: 5})

User.create(username: "zzz",
            email: "zzz",
            password_digest: "#{User.digest('zzz')}")