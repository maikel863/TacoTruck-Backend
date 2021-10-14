# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Taco.destroy_all

puts 'Seeding Tacos'

tacos = Taco.create!([
    {
        name: 'Regular Taco'
        description: 'Includes Meat, Onions, Cilantro, Salsa and Cheese'
        image: 'https://unsplash.com/photos/z_PfaGzeN9E'
        price: 900
    },
    {
        name: 'Super Taco'
        description: 'Includes Meat, Onions, Cilantro, Salsa, Cheese, Guacamole and Sour Cream'
        image: 'https://unsplash.com/photos/VBfbjO6GA8U'
        price: 1200
    },    {
        name: 'Veggie Taco'
        description: 'Includes Cheese, Rice, Beans, Lettuce, Tomatoe, Onions, Cilantro, Salsa, Guacamole and Sour Cream'
        image: 'https://unsplash.com/photos/hAFCfzaeVJg'
        price: 700
    },    {
        name: 'Taco Salad'
        description: 'Includes Flour Crispy Shell, Rice, Beans, Meat, Lettuce, Pico de Gallo, Sour Cream, Guacamole and Cheese'
        image: 'https://unsplash.com/photos/UvBj5ZHf3i8'
        price: 1000
    },
    {
        name: 'Fish Taco'
        description: 'Includes Cod, Corn Slaw, Cilantro, Avocado and Jalapeno'
        image: 'https://unsplash.com/photos/aUWCL1DtMtM'
        price: 1500
    },
    {
        name: 'Birria Taco'
        description: 'Includes Beef Birria, Onion, Cilantro, Cheese and Lime Juice'
        image: 'https://unsplash.com/photos/BpmEx2YgqWM'
        price: 1700
    },
    {
        name: 'Regular Burrito'
        description: 'Includes Meat, Rice, Beans and Pico de Gallo'
        image: 'https://unsplash.com/photos/YFTGpQBNLVw'
        price: 900
    },
    {
        name: 'Super Burrito'
        description: 'Includes Meat, Rice, Beans, Lettuce, Tomatoes, Pico de Gallo, Cheese, Sour Cream and Guacamole'
        image: 'https://unsplash.com/photos/8lA4s3WjBds'
        price: 1200
    },
    {
        name: 'Veggie Burrito'
        description: 'Includes Rice, Beans, Lettuce, Tomatoes, Pico de Gallo, Cheese, Sour Cream and Guacamole'
        image: 'https://unsplash.com/photos/O5D41JB-wH4'
        price: 1000
    }
])

puts 'Taco Seeded'

User.destroy_all

puts 'seeding users'

3.times do
    User.create!([
        {
            name: 'Mike'
            email: 'mike@gmail.com'
            password_digest: 'password'
        },
        {
            name: 'Bob'
            email: 'bob@gmail.com'
            password_digest: 'password'
        },
        {
            name: 'Steve'
            email: 'steve@gmail.com'
            password_digest: 'password'
        },
    ])
        end


puts 'users seeded'
