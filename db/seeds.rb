# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


sobremesas = MealCategory.create(name: 'Sobremesas')
 creme_brule = Meal.create(name: 'Crème Brûlée', description: 'Classico creme de baunilha maçaricado', price: '70', available: true, meal_category_id: 1)
 petit_gateau = Meal.create(name: 'Petit gateau', description: 'Bolo gostoso com sorvete', price: '50', available: true, meal_category_id: 1)
 torta_limao = Meal.create(name: 'Torta de Limão', description: 'Torta gostosa com limão', price: '50', available: true, meal_category_id: 1)

situations = Situation.create([
    {description: 'Pendente'},
    {description: 'Entregue'},
    {description: 'Cancelado'}
])

orders = Order.create([
    {situation_id:1},
    {situation_id:2},
    {situation_id:3}
])
orderMeals = OrderMeal.create([
    {order_id: 1, meal_id: 1},
    {order_id: 2, meal_id: 2},
    {order_id: 3, meal_id:3 }
])







