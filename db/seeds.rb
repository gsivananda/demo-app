# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Relationship.create(name: "married", display_name: "Married")
Relationship.create(name: "separated", display_name: "Separated")
Relationship.create(name: "never married", display_name: "Never Married Or been in de facto relationship")
Relationship.create(name: "engaged", display_name: "Engaged")
Relationship.create(name: "divorced", display_name: "Divorced")
Relationship.create(name: "defacto", display_name: "Defacto")
Relationship.create(name: "widowed", display_name: "Widowed")