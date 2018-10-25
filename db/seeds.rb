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
    business_name: 'Auricle',
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
    name: 'Jabbersphere',
    address: '4442 Melvin Way',
    contact: 'ShelaOsborn',
    phone_number: '7642467729',
    email_address: 'oowen0@prlog.org',
    user_id: 1
},
{
    name: 'Babbleblab',
    address: "48806 Bashford Place",
    contact: "Amory",
    phone_number: "9307888838",
    email_address: "amyers1@163.com",
    user_id: 1
},
{
    name: 'Yabox',
    address: "32592 Johnson Parkway",
    contact: "Currie",
    phone_number: "7311210279",
    email_address: "ccowlam2@cnn.com",
    user_id: 1
},
{
    name: 'Avavee',
    address: "214 Barby Park",
    contact: "Betta",
    phone_number: "5213577325",
    email_address: "btertre3@jalbum.net",
    user_id: 1
}])

puts Client.all.length

project = Project.create ([
    {
    name: 'Hatity',
    client_id: 1,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
    completed: false,
    hourly_rate: 45.00,
    time_spent: 22,
    start_date: Date.new(2018,10,11),
    end_date: Date.new(2018,12,11),
},{
    name: "Bigtax",
    client_id: 1,
    description: 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    hourly_rate: 4450,
    time_spent: 450,
    start_date: Date.new(2018,10,11),
    end_date: Date.new(2019,03,10),
    completed: false
},
{
    name: "Span",
    client_id: 1,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas sed tempus urna et pharetra pharetra massa massa ultricies. Non enim praesent elementum facilisis leo.',
    hourly_rate: 800,
    time_spent: 600,
    start_date: Date.new(2018,10,11),
    end_date: Date.new(2019,01,10),
    completed: true
}
])

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
        description: " Amet commodo nulla facilisi nullam vehicula ",
        due_date: Date.new(2018,10,28),
        completed: false,
        project_id: 1
    }
])

puts Task.all.length