# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

CSV.foreach('db/mapdata.csv') do |row|
	Map.create(:no => row[0],
		:ku => row[1],
		:namae => row[2],
		:jusho => row[3],
		:tel => row[4],
		:eigyo => row[5],
		:kyujitu => row[6],
		:ido => row[7],
		:keido => row[8])
end