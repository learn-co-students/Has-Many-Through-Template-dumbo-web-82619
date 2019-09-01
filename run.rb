require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require 'pry'

# teachers

mr_fallon = Teacher.new("Mr. Fallon", 10)
ms_crawbuck = Teacher.new("Ms. Crawbuck", 9)
mr_peddie = Teacher.new("Mr. Peddie", 11)
mrs_breyer = Teacher.new("Mrs. Breyer", 12)

# students

dan_romans = Student.new("Dan Romans", 10)
doug_smith = Student.new("Doug Smith", 10)
buster_bluth = Student.new("Buster Bluth", 9)
ren_hoek = Student.new("Ren Hoek", 9)
jon_stuber = Student.new("Jon Stuber", 11)
caitlin_donaghy = Student.new("Caitlin Donaghy", 11)
stimpy_stimpson = Student.new("Stimpy Stimpson", 12)
maeby_fünke = Student.new("Maeby Fünke", 12)

# classes

class_01 = SchoolClass.new(9, "Algebra", "Ms. Crawbuck", "Buster Bluth")
class_02 = SchoolClass.new(9, "Geometry", "Ms. Crawbuck", "Ren Hoek")
class_03 = SchoolClass.new(10, "Criminal Justice", "Mr. Fallon", "Dan Romans")
class_04 = SchoolClass.new(10, "Social Studies", "Mr. Fallon", "Doug Smith")
class_05 = SchoolClass.new(11, "Biology", "Mr. Peddie", "Jon Stuber")
class_06 = SchoolClass.new(11, "Chemistry", "Mr. Peddie", "Caitlin Donaghy")
class_07 = SchoolClass.new(12, "US History", "Mrs. Breyer", "Stimpy Stimpson")
class_08 = SchoolClass.new(12, "World History", "Mrs. Breyer", "Maeby Fünke")

binding.pry
0