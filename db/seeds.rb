# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Event.delete_all
Outcome.delete_all
Prediction.delete_all

User.create(name: "sample user", money: 1000)


Event.create(title:'Election', description: "d1")
Event.create(title:'Sportsball Game', description: "d2")

Outcome.create(event_id: 1, name:"A wins", prediction_value: 65)
Outcome.create(event_id: 1, name:"B wins", prediction_value: 35)
Outcome.create(event_id: 2, name:"C wins", prediction_value: 50)
Outcome.create(event_id: 2, name:"D wins", prediction_value: 40)
Outcome.create(event_id: 2, name:"Draw", prediction_value: 10)


Prediction.create(user_id: 1, amount: 100, outcome_id: 2 , prediction_value_at_bet: 35)
Prediction.create(user_id: 1, amount: 100, outcome_id: 3 , prediction_value_at_bet: 50)
