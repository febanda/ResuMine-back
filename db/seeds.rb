# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resume = Resume.create([{personal_info: {name: 'Stan', email: 'stan123@gmail.com', phone:'713-356-0987', title:'motivational speaker'}}{work_history: {company:'Exxon', years: '2010-2015', position:'CEO', responsibilites:'Mowing'}}{education: {school: ''}}])