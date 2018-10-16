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

user = User.create ([
    {
    username: 'casey',
    password: 'casey',
    business_name: 'casey',
    name: 'casey'
},
{
    username: 'Lance',
    password: 'lance',
    business_name: 'Lance',
    name: 'Lance'
}])

puts User.all.length

client = Client.create ([{
    name: 'Lala',
    address: 'lalaLand',
    contact: 'Shela',
    phone_number: '07937223844',
    email_address: 'Shela@lala.com',
    user_id: 1
},
{
    name: 'Big Client',
    address: "Big Office",
    contact: "Big Mama",
    phone_number: "07989993",
    email_address: "bigmama@bigclient.com",
    user_id: 2
}])

puts Client.all.length

project = Project.create ([
    {
    name: 'Lalas project',
    client_id: 1,
    description: 'Lalalalala',
    completed: false,
    hourly_rate: 45.00,
    time_spent: 22,
    start_date: Date.new(2018,10,11),
    end_date: Date.new(2018,10,11),
},{
    name: "Test 2",
    client_id: 1,
    description: 'Please just work!',
    hourly_rate: 4450,
    time_spent: 0,
    start_date: Date.new(2018,10,11),
    end_date: Date.new(2018,10,11),
    completed: false
}])

puts Project.all.length

invoice = Invoice.create ([
    {
        total: 0.00,
        project_id: 1
    }
])

puts Invoice.all.length

task = Task.create ([
    {
        description: "something something",
        due_date: Date.new(2018,10,28),
        completed: false,
        project_id: 1
    }
])

puts Task.all.length