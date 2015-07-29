# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Campaign.destroy_all
Client.destroy_all

client1 = Client.create({first_name: 'Manuel', last_name: 'Garcia', age: 56, number_of_children: 2, bio: "I'm originally from New Zealand but have been living in the Bay for the last 7 years. I have a disability- I'm paraplegic, and I'm homeless and currently living in a shelter. I'm hoping to use HandUp to help with rental assistance, as I'm seeking housing, and technical assistance, in the form of a small laptop, so I can communicate with family back home and access resources that are available for me related to work and financial support. Since becoming disabled, I've developed a passion for physically integrated dance, which is a contemporary modern style that combines people with and without physical disabilities. I've toured many of the states. I was the first disabled New Zealander to be awarded the Isadora Duncan Dance Award.", photo_url: "https://c2dc534f0d6bd00d3a80-047e9c542ba622e42a7197026f87fdf0.ssl.cf2.rackcdn.com/rodney-GL84C1-x528.jpg", city: "San Francisco", phone_number: "703-472-3279"})
client2 = Client.create({first_name: 'Martha', last_name: 'Parker', age: 27, number_of_children: 1, bio: "I'm a single mother who has recently become homeless. Just recently, I lived with my daughter, mother, father, brother, and nephew. Family is very important to me, and I would go to great lengths for my family. Right now I'm just experiencing a little set back and need to straighten some things out so that I can can find myself. My backstory: My daughter and I are homeless because I was too trusting and allowed my family members to stay with me without contributing to our rent or utility bills. Because of the added expenses to the home, I began to get very behind on some bills, mainly utilities and rent; and was asked to move out because of this. I also just recently had three knee surgeries and having to re-learn how to use the muscles in my thighs has just been an added obstacle that has made this process that much more difficult.Now I am homeless and receiving help at Community Outreach Inc. The $500 I am asking for would be enough for me to put a down payment on what I owe and begin making payments on a plan (which I am certainly capable of) My goals, moving forward: I would like to move into my own place for my daughter and I, and begin working again so that I can provide the life for the two of us that I know we can have. Independence is the main theme of my goal moving forward.", photo_url: "http://thewannabehomesteader.com/wp-content/uploads/2013/03/7617876912_8e751b3093.jpg ", city: "San Francisco", phone_number: "703-472-3279"})
client3 = Client.create({first_name: 'Maria', last_name: 'Hernandez', age: 30, number_of_children: 1, bio: "I lived in Raphael House for about 6 months. Everyone was kind, helped me take a good step forward and provided me with assistance to move into a place. Unfortunately, there were some issues that the landlord had, which resulted in us losing our home. We are now temporarily staying with a family member. Although my son and I share a room, we do have our own space. Our goal is to get a place of our own. However, it has been a challenge to maintain a job. My son has been discharged from schools due to behavior disorders so it’s been hard to find a school that meets my son’s needs and a job that is flexible with working hours. I actually ended up losing my last job because every time my son got in trouble, the school would call me to pick him up, so I would have to leave my job. I was born and raised in San Francisco, California and have lived in the city most of my life. My son, who is currently 4 years old, was also born in the city. Currently, we are staying with a family member in Pittsburg, CA. This is temporary and my goal is to find our own place in the bay area. I do have work experience in the bay area and most of my jobs have been in San Francisco. I’ve worked at restaurants as well as antique shops doing customer service. I have also worked with children as a teacher’s aide and in home care, taking care of elderly with disabilities.", photo_url: "http://www.sistersofmercy.org/blog/wp-content/uploads/2014/11/14106067912_3663bf554f_z1-287x320.jpg", city: "San Francisco", phone_number: "703-472-3279"})

campaign1 = Campaign.create({night_date: Date.today, bed_amt: 10, amount_goal: 2500})
campaign1.clients.push(client1)
campaign1.clients.push(client2)
campaign1.clients.push(client3)
campaign2 = Campaign.create({night_date: Date.today+1, bed_amt: 10, amount_goal: 2500})
campaign2.clients.push(client1)
campaign2.clients.push(client2)
campaign2.clients.push(client3) 
campaign3 = Campaign.create({night_date: Date.today+2, bed_amt: 10, amount_goal: 2500})
campaign3.clients.push(client1)
campaign3.clients.push(client2)
campaign3.clients.push(client3) 
campaign4 = Campaign.create({night_date: Date.today+3, bed_amt: 10, amount_goal: 2500})
campaign4.clients.push(client1)
campaign4.clients.push(client2)
campaign4.clients.push(client3) 
campaign5 = Campaign.create({night_date: Date.today+4, bed_amt: 10, amount_goal: 2500})
campaign5.clients.push(client1)
campaign5.clients.push(client2)
campaign5.clients.push(client3) 
campaign6 = Campaign.create({night_date: Date.today+5, bed_amt: 10, amount_goal: 2500})
campaign6.clients.push(client1)
campaign6.clients.push(client2)
campaign6.clients.push(client3) 
campaign7 = Campaign.create({night_date: Date.today+6, bed_amt: 10, amount_goal: 2500})
campaign7.clients.push(client1)
campaign7.clients.push(client2)
campaign7.clients.push(client3)