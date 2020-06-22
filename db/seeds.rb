# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


sobremesas = MealCategory.create(name: 'Sobremesas')
 
 creme_brule = Meal.new(name: 'Crème Brûlée', description: 'Classico creme de baunilha maçaricado', price: '70', available: true, meal_category_id: 1)
 creme_brule.image.attach(io: File.open("#{Rails.root}/app/assets/image/b3d13e8be3d5cf99e768dbf417c743f4.jpg"), filename: "b3d13e8be3d5cf99e768dbf417c743f4.jpg")
 creme_brule.save!

 petit_gateau = Meal.new(name: 'Petit gateau', description: 'Bolo gostoso com sorvete', price: '50', available: true, meal_category_id: 1)
 petit_gateau.image.attach(io: File.open("#{Rails.root}/app/assets/image/efa0af106501798856889599ee4dbe48.jpg"), filename: "efa0af106501798856889599ee4dbe48.jpg")
 petit_gateau.save! 

 torta_limao = Meal.new(name: 'Torta de Limão', description: 'Torta gostosa com limão', price: '50', available: true, meal_category_id: 1)
 torta_limao.image.attach(io: File.open("#{Rails.root}/app/assets/image/a1f0656914cc3b02038bf90f9371e3ef.jpg"), filename: "a1f0656914cc3b02038bf90f9371e3ef.jpg")
torta_limao.save!

 pendente = Situation.create(description: 'Pendente')
 entregue = Situation.create(description: 'Entregue')
 cancelado = Situation.create(description: 'Cancelado')

 







