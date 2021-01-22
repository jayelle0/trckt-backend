# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "🗑 Deleting old recipes..."
User.destroy_all
Client.destroy_all
Project.destroy_all
Timesheet.destroy_all



puts " 👨🏻‍🎨 Seeding users..."

1.times do
   user =User.create!(
        name: "Jacqueline", 
        email: "j@gmail.com",
        password: "blue",
        address: "123 fake stret",
        phone: "123-4567"

  )
    10.times do
        client = Client.create!(
            user: user,
            name: Faker::Appliance.unique.brand, 
            email: Faker::Internet.unique.email,
            address: Faker::Address.street_address,
            phone: Faker::PhoneNumber.cell_phone
        )
        5.times do
           project =  Project.create!(
            client: client, 
            name: Faker::App.unique.name,
            payment_terms: 30, 
            hourly_fee: 150, 
          
            )
            15.times do
                Timesheet.create!(
                project: project, 
                date:Faker::Date.forward(days: 90), 
                hours:rand(1..5), 
                note: "Planning"
                )
    
            end 

        end 
     end 
  end


puts "🎉 Done!"