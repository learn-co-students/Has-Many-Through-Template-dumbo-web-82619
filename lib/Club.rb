class Club
    attr_reader(:name, :founded_year)

    @@all = []

    def initialize(name, founded_year)
        @name = name
        @founded_year = founded_year
        @@all << self
    end

    def self.all
        @@all
    end

    def memberships
        Membership.all.select do |membership|
            membership.club == self
        end
    end

    def members
        self.memberships.map do |membership|
            membership.student
        end
    end

    def add_member(new_member)
        if self.members.include?(new_member)
            "#{new_member.name} is already part of this club!"
        else
            Membership.new(self, new_member, DateTime.now.strftime("%m-%d-%Y"))
        end
    end

    def remove_member(member)
        Membership.all.delete_if do |membership|
            membership.club == self && membership.student == member
        end
        "#{member.name} has been removed from #{self.name}"
    end

    def size
        self.members.size
    end

    def self.most_popular
        club_sizes = self.all.map do |club|
            club.size
        end
        self.all.find do |club|
            club.size == club_sizes.max
        end
    end
    
    def self.least_popular
        club_sizes = self.all.map do |club|
            club.size
        end
        self.all.find do |club|
            club.size == club_sizes.min
        end
    end

    def list_of_ages
        self.members.map do |member|
            member.age
        end
    end

    def average_age
        age_total = self.list_of_ages.reduce do |total, age|
            total + age
        end
        age_total / self.size
    end

    def oldest_member
        self.members.find do |member|
            member.age == self.list_of_ages.max
        end
    end

    def youngest_member
        self.members.find do |member|
            member.age == self.list_of_ages.min
        end
    end

    def self.find_by_name(name)
        found = self.all.find do |club|
            club.name.downcase == name.downcase
        end
        if found
            found
        else
            "Sorry, we do not have that club registered"
        end
    end

    def list_by_school(school)
        schoolmates = []
        self.members.select do |member|
           if member.school.downcase == school.downcase
            schoolmates << member.name
           end
        end
        schoolmates
    end

    def self.find_by_year_founded(year)
        found = self.all.select do |club|
            club.founded_year == year
        end
        if found.size > 0
            found
        else
            return "Sorry, there is no club founded in the year you have given"
        end
    end
end
