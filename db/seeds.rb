# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Server.create!(name: 'web1', ip: '72.10.22.345')
Server.create!(name: 'web2', ip: '72.10.22.346')
Server.create!(name: 'web3', ip: '72.10.22.347')
Server.create!(name: 'web4', ip: '72.10.22.348')
Server.create!(name: 'web5', ip: '72.10.22.349')
Server.create!(name: 'web6', ip: '72.10.22.350')
Server.create!(name: 'app1', ip: '71.10.22.345')
Server.create!(name: 'app2', ip: '71.10.22.346')
Server.create!(name: 'app3', ip: '71.10.22.347')
Server.create!(name: 'app4', ip: '71.10.22.348')
Server.create!(name: 'app5', ip: '71.10.22.349')
Server.create!(name: 'app6', ip: '71.10.22.350')