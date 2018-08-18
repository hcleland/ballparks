# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# response = Unirest.get("https://api.sportradar.us/mlb/trial/v6.5/en/league/venues.json?api_key=GOES HERE")

# ballparks = response.body

# array_of_venues = ballparks['venues']

# current_ballparks = []
# array_of_venues.each do |venue|
#   if !venue['market'].nil?
#     current_ballparks << venue 
#   end
# end

# number = 1
# current_ballparks.each do |venue|
#   p number
#   p venue['market']
#   p venue['name']
#   p venue['address']
#   p venue['city']
#   p venue['state']
#   p venue['zip']
#   number += 1

#   ballpark = Ballpark.new(
#   market: venue['market'],
#   name: venue['name'],
#   address: venue['address'],
#   city: venue['city'],
#   state: venue['state'],
#   zip: venue['zip']
#   )
#   ballpark.save
# end


# ballpark = Ballpark.find_by(id: "1")
# ballpark.update({market: "San Diego", team_name: "Padres", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_60/6050a7f305319d234dcbfdfee3b58ff3.jpeg"})
# ballpark.save

ballpark = Ballpark.find_by(id: "2")
ballpark.update({market: "New York", team_name: "Mets", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_64/64f1c4b86d25933ba2023b39b558a496.jpeg"})
ballpark.save

# ballpark = Ballpark.find_by(id: "3")
# ballpark.update({market: "Cleveland", team_name: "Indians", league: "American", logo: "https://images.homedepot-static.com/productImages/787b7127-5b07-4517-84cc-6ad3f4d5ca1a/svn/red-fanmats-area-rugs-18133-64_1000.jpg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "4")
# ballpark.update({market: "San Francisco", team_name: "Giants", league: "National", logo: "http://www.sierranevadaconservation.org/wp-content/uploads/2018/04/san-francisco-giants-logo-roundel-mat-27-round-area-rug.jpg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "5")
# ballpark.update({market: "Minnesota", team_name: "Twins", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_fb/fbdc963e8eda642c1d4bc2a68d1e9d81.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "6")
# ballpark.update({market: "Tampa Bay", team_name: "Rays", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_38/385de337861f7dea4cc0097ce37acb9b.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "7")
# ballpark.update({market: "Atlanta", team_name: "Braves", league: "National", logo: "https://www.logolynx.com/images/logolynx/0f/0f3dd405f98fff5dc0390bf37ad725fa.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "8")
# ballpark.update({market: "Milwaukee", team_name: "Brewers", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_cb/cbeecdd520e497f3ec4192cad11f781f.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "9")
# ballpark.update({market: "Texas", team_name: "Rangers", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_68/680c7bac5cf99faa3c7266b170867c6e.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "10")
# ballpark.update({market: "Baltimore", team_name: "Orioles", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_91/91fa672e5e12d33fdb5fa324c22191a0.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "11")
# ballpark.update({market: "Oakland", team_name: "Athletics", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_40/401931c5ecad70b11e73be8cc6ff0924.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "12")
# ballpark.update({market: "Chicago", team_name: "White Sox", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_1f/1f73b77893c6a72074851f9cc45895b6.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "13")
# ballpark.update({market: "Chicago", team_name: "Cubs", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_9c/9cf4902e526415ae72673adae9f7b5d5.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "14")
# ballpark.update({market: "Los Angeles", team_name: "Angels", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_42/427761b364cd62f4eba9cc3f5808385e.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "15")
# ballpark.update({market: "Pittsburgh", team_name: "Pirates", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_50/50215bed0324e059b4ca03d801f4728e.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "16")
# ballpark.update({market: "Los Angeles", team_name: "Dodgers", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_71/71af2c135da19751985e04dd2e6fc3ce.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "17")
# ballpark.update({market: "Kansas City", team_name: "Royals", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_cd/cd82d6366033784399d230c219ec0952.jpeg"})
# ballpark.save


# ballpark = Ballpark.find_by(id: "18")
# ballpark.update({market: "New York", team_name: "Yankees", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_32/3201aca684f1237403624b3705c2b109.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "19")
# ballpark.update({market: "St. Louis", team_name: "Cardinals", league: "National", logo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSGCR4IdB2_733Yv2I56n_nN23KN6TyR2KoA7QQEGXfXkKNOdBow"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "20")
# ballpark.update({market: "Toronto", team_name: "Blue Jays", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_19/190636a5df2bf9223d8926c2286442c3.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "21")
# ballpark.update({market: "Colorado", team_name: "Rockies", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_97/979a766cfd9fe9615fb06f9b2a31f41b.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "22")
# ballpark.update({market: "Boston", team_name: "Red Sox", league: "American", logo: "https://images.homedepot-static.com/productImages/de1ff652-86dd-4e3d-8eb3-badf80fe7a34/svn/red-fanmats-area-rugs-18129-64_400_compressed.jpg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "23")
# ballpark.update({market: "Philadelphia", team_name: "Phillies", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_e1/e12369f127430da7791b752b50ca5a14.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "24")
# ballpark.update({market: "Washington", team_name: "Nationals", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_81/81e30f634da7ec2ebd7cf03abc352473.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "25")
# ballpark.update({market: "Arizona", team_name: "Diamondbacks", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_32/3213dad2489cbdfc652934d43ba5f4fb.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "26")
# ballpark.update({market: "Miami", team_name: "Marlins", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_3b/3b5d561b8f26ef4c7e08b2ffdc84b509.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "27")
# ballpark.update({market: "Detroit", team_name: "Tigers", league: "American", logo: "https://images.homedepot-static.com/productImages/37722a58-e94c-424b-aa8f-25fad464741b/svn/orange-fanmats-area-rugs-18135-64_1000.jpg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "28")
# ballpark.update({market: "Houston", team_name: "Astros", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_9c/9ca29f6afacb05c74651cb65abd29419.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "29")
# ballpark.update({market: "Cincinnati", team_name: "Reds", league: "National", logo: "https://www.logolynx.com/images/logolynx/s_b8/b895215b5c1e784ade88b242db1c15f3.jpeg"})
# ballpark.save

# ballpark = Ballpark.find_by(id: "30")
# ballpark.update({market: "Seattle", team_name: "Mariners", league: "American", logo: "https://www.logolynx.com/images/logolynx/s_e0/e0a198d3a61e85fefbeaeb65d9630400.jpeg"})
# ballpark.save