require_relative "lib/Club.rb"
require_relative "lib/Student.rb"
require_relative "lib/Membership.rb"
require 'date'
require 'pry'

#For Club model -->
#initializes with a name and founded year
#members lists all the members of the club instance
#add_member takes in a student instance and adds that member to the club instance's list of members
#remove_member does the opposite of #add_member
#.most_popular
#.least_popular
#average_age of the club instance's members
#oldest_member
#youngest_member
#.find_by_name takes in a string of a club's name and finds the club instance with said name
#list_by_school takes in a string of a school name and lists the members of the club instance that attends that school
#.find_by_year_founded takes in a year and returns a list of clubs founded in that year

#For Student Model -->
#initializes with a name, school, and age
#clubs lists all the club instances that the student is a part of
#join_club and leave_club take in a club instance and do exactly what the method name says
#clubs_joined returns the number of clubs this student instance has joined
#.most_active and .least_active returns the student who has joined the most and least number of clubs respectively
#fellow_club_members takes in a club instance and lists the members who are part of that club
#.find_by_name takes in a string of a student's name and returns the student instance that matches
#date_joined takes in a club instance and returns the date the student joined said club

#Membership model -->
#Initializes with a club, student, and date_joined





badminton = Club.new("Badminton Club", 1997)
handball = Club.new("Handball Club", 2001)
code = Club.new("Code Team", 2008)
book = Club.new("Book Club", 1995)
dance = Club.new("Dance Group", 2004)

ben = Student.new("Benny", "Flatiron School", 23)
kev = Student.new("Kevin", "Flatiron School", 22)
ken = Student.new("Kenneth", "Baruch College", 19)
tracy = Student.new("Tracy", "Med School", 23)
oscar = Student.new("Oscar", "Med School", 16)
jen = Student.new("Jenny", "Baruch College", 21)
ruby = Student.new("Ruby", "Flatiron School", 20)
alice = Student.new("Alice", "Med School", 18)
andy = Student.new("Andrew", "Med School", 25)
carl = Student.new("Carl", "Med School", 23)

mem1 = Membership.new(badminton, kev, "06-02-2016")
mem2 = Membership.new(code, ben, "07-26-2019")
mem3 = Membership.new(handball, ken, "07-16-2014")
mem4 = Membership.new(book, tracy, "12-25-2015")
mem5 = Membership.new(dance, oscar, "04-01-2016")
mem6 = Membership.new(badminton, jen, "04-15-2018")
mem7 = Membership.new(code, ruby, "10-15-2017")
mem8 = Membership.new(handball, alice, "11-11-2011")
mem9 = Membership.new(book, andy, "01-07-2013")
mem10 = Membership.new(dance, carl, "05-28-2017")
mem11 = Membership.new(dance, ben, "04-04-2014")
mem12 = Membership.new(handball, ben, "04-01-2016")
mem13 = Membership.new(code, kev, "06-02-2016")
mem14 = Membership.new(book, ken, "04-05-2013")
mem15 = Membership.new(code, tracy, "11-12-2012")
mem16 = Membership.new(handball, oscar, "07-22-2018")
mem17 = Membership.new(handball, jen, "12-12-2013")
mem18 = Membership.new(book, ruby, "06-02-2016")
mem19 = Membership.new(code, alice, "02-02-2012")
mem20 = Membership.new(dance, andy, "10-02-2013")
mem21 = Membership.new(book, ben, "06-02-2016")
mem22 = Membership.new(badminton, ben, "06-04-2012")
mem23 = Membership.new(book, kev, "04-03-2016")
mem24 = Membership.new(badminton, oscar, "06-02-2016")
mem25 = Membership.new(code, jen, "11-01-2014")






binding.pry
0