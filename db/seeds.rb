# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def r3d6
	Faker::Number.between(1, 6) + Faker::Number.between(1, 6) + Faker::Number.between(1, 6)
end

1_000.times do |i|

	a = [r3d6, r3d6, r3d6, r3d6, r3d6, r3d6]
	b = []
	(0..5).each do |k|
		b[k] = (a[k] - 10) /2
	end

	Charactersheet.create!(
			player_name: Faker::Name.first_name,
			character_name: "#{Faker::Name.first_name}#{i}",
			ability_str: a[0],
			ability_dex: a[1],
			ability_con: a[2],
			ability_int: a[3],
			ability_wis: a[4],
			ability_cha: a[5],
			bonus_str: b[0],
			bonus_dex: b[1],
			bonus_con: b[2],
			bonus_int: b[3],
			bonus_wis: b[4],
			bonus_cha: b[5],			
		)
end
