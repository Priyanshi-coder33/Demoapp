# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Todo.delete_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE todos_id_seq RESTART WITH 1")
Todo.create(todo_text:"Buy groccery",due_date:Date.today+2,status:false)