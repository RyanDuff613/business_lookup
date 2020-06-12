# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    30.times do |i|
      business = Business.create!(
        name: Faker::Company.name,
        business_type: Faker::Commerce.department(max: 1, fixed_amount: true),
        phone: Faker::PhoneNumber.cell_phone,
        website: 'http://www.'+ Faker::Internet.domain_name,
        address: Faker::Address.full_address
      )
      puts "#{i}:#{business.name},#{business.business_type},#{business.phone},#{business.website},#{business.address}"
    
    end
  end
end

Seed.begin