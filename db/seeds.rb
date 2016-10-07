# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ENV.update YAML.load_file('config/application_settings.yml')[Rails.env] rescue {}

ENV.map{|e| p e}

Admin.create!([  {email: ENV['MAIN_ADMIN'], password: "xxxxxxxx", password_confirmation: "xxxxxxxx"} ])
