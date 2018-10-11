# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Client.destroy_all
Invoice.destroy_all
Project.destroy_all
Task.destroy_all

user = User.create ({
    username: 'casey',
    password: 'casey',
    business_name: 'casey',
    name: 'casey'
})

client = Client.create ({
    name: 'Lala',
    address: 'lalaLand',
    contact: 'Shela',
    phone_number: '07937223844',
    email_address: 'Shela@lala.com',
    user_id: 1
})

project = Project.create ({
    name: 'Lalas project',
    client_id: 1,
    description: 'Lalalalala',
    completed: false,
    hourly_rate: 45.00,
    time_spent: 0.00,
    start_date: 0,
    end_date: 0
})