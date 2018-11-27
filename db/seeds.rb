# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

def range (min, max)
    rand * (max-min) + min
end

imgs = [
    "http://www.canalvie.com/polopoly_fs/1.1782001.1466019232!/image/chatons-qui-dorment.jpg_gen/derivatives/cvlandscape_670_377/chatons-qui-dorment.jpg",
    "https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-155455.jpg",
    "https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-161238.jpg",
    "https://cdnfr1.img.sputniknews.com/images/103447/43/1034474344.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXLb0apaoLwrxQm7DjFCAncT2MU2z_GvGNAC7o8z3dhgbE8UKr",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8-ANdyTePUedCfKZ2ltTa8Npv1dfJf-kiL6IPwPPwPYjCshT-",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHKCeJuY1_6XqTOnS9ZwGyctMWE-7zPZmVczJw8v5dOkC4RwNl",
    "https://media.gerbeaud.net/2015/10/640/biberon-chaton.jpg"
]
items = []
20.times do
    name = Faker::FunnyName.name
    items << Item.create(
        title: name,
        short_description: Faker::Lorem.sentence,
        long_description: Faker::Lorem.sentence,
        price: range(10.0, 50.0),
        slug: name.downcase.gsub(' ', '-').gsub('_', '-').gsub('.', ''),
        image_url: imgs[rand(0..imgs.size)]
        )
end