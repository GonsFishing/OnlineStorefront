# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(
  title: 'T-shirt', 
  description: 'has picture of yuuto ichika', 
  image_url: 'Yuuto.png', 
  price: 20.00)

  Product.create!(
    title: 'Firetruck', 
    description: 'A fire engine (also known in some places as a fire truck or fire lorry)
    is a road vehicle (usually a truck) that functions as a firefighting apparatus.
    The primary purposes of a fire engine include transporting firefighters 
    and water to an incident as well as carrying equipment for firefighting operations.
    Some fire engines have specialized functions, such as wildfire suppression
    and aircraft rescue and firefighting, and may also carry equipment for technical rescue.
    Many fire engines are based on commercial vehicle chassis that are further upgraded and 
    customised for firefighting requirements. They are normally fitted with sirens and emergency
    vehicle lighting, as well as communication equipment such as two-way radios and mobile computer technology.
    The terms fire engine and fire truck are often used interchangeably to a broad range of vehicles involved 
    in firefighting; however, in some fire departments they refer to separate and specific types of vehicle.', 
    image_url: 'Brandbil.jpg', 
    price: 20.00)

    Product.create!(
      title: 'Rubber duck', 
      description: 'Quite rubbery', 
      image_url: 'Rubber duck.jpg', 
      price: 20.00)