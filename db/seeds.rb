# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless Job.any?
  job = Job.create(
    title: "Chrismas Gang Manager", 
    description: "
      Know the rules, challenge them, be nice, work hard, party harder !
      
      Social Mission :

      Our main objective is to boost the impact of social entrepreneurs by connecting them with supercool individuals and enabling them to take up the challenges. In addition, and in order to sustain their social impact, we promote the concept of social business.
      Global Community :

      Anywhere there is an issue in our society, we will be! We are a global community of happy activists with an impact on a local scale.
      Open Project :

      MakeSense is not a startup, it is a movement! It is defined as an open project, meaning it is not owned by anyone, but open to everyone.
      Upload :

      Stop downloading, start uploading! Contribute, collaborate, share! The most we share and with the most people, the better off we are as a whole.
      Innovation :

      Only by combining people, technology and creative thinking, we will find the most innovative solutions to the world problems. Only by experimenting, trying and failing, we will solve them.
      Independent :

      Out bureaucracy and politics! In order to keep our flexibility and agility, we will stay as independent as possible. With constraints and limited resources we will just have to be more innovative everyday, and look for opportunities everywhere. However, we are always open to partnerships with organizations committed to make a real difference.
      Scale :

      We will keep expending our reach so long that there are more social issues to be solved. In the world we imagine, MakeSense will be completely irrelevant.
      Impact :

      We want to have the greatest impact possible. To achieve that we will keep asking ourselves the right questions, keep measuring our impact, analyze and improve the way we work. It is a never-ending journey, a continuous learning experience.
      Self-sustainable :

      We will find a viable economic model (working on ways to make the project cost nothing to run ;p )
      Fun :

      And last but not least, we do all the above with a big smile and lots of fun!",
    apply: "Ping me on facebook!",
    location: "Santa Claus, AZ",
    company_name: "MakeSense",
    company_url: "http://we.makesense.org",
  )
end
