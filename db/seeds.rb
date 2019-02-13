# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Resume.destroy_all
    User.destroy_all
    Personal_Info.destroy_all
    Work_Experience.destroy_all
    Education.destroy_all
    Skill.destroy_all


    user1 = User.create(username: 'stan1234', password_digest: '456')
    resume1 = Resume.create(user: user1)
    personal_info1 = Personal_Info.create({name: 'Stan', email: 'stan123@gmail.com', phone:'713-356-0987', title:'motivational speaker', bio:'Hard Worker', resume: resume1})
    
    work_history1 = Work_Experience.create({company:'Exxon', years: '2010-2015', position:'CEO', responsibilities:'Mowing', resume: resume1})
    
    education1 = Education.create({school: 'USC', years_attended:'1990-2018', major:'TV', degree:true, resume: resume1})
    
    skill1 = Skill.create({description: "Hello", resume: resume1})

    
    