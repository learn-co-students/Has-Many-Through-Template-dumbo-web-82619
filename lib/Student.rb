class Student
    attr_reader(:name, :school, :age)

    @@all = []

    def initialize(name, school, age)
        @name = name
        @school = school
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def memberships
        Membership.all.select do |membership|
            membership.student == self
        end
    end

    def clubs
        self.memberships.map do |membership|
            membership.club 
        end
    end

    def join_club(club)
        if club.members.include?(self)
            "You are already part of this club!"
        else
            Membership.new(club, self, DateTime.now.strftime("%m-%d-%Y"))
        end
    end

    def leave_club(club)
        if club.members.include?(self)
            Membership.all.delete_if do |membership|
                membership.club == club && membership.student == self
            end
            "#{self.name} has left #{club.name}"
        else
            "You can't leave a club you are not a part of."
        end
    end

    def clubs_joined
        self.clubs.size
    end

    def self.most_active
        club_num = self.all.map do |student|
            student.clubs_joined
        end
        self.all.find do |student|
            student.clubs_joined == club_num.max
        end
    end

    def self.least_active
        club_num = self.all.map do |student|
            student.clubs_joined
        end
        self.all.find do |student|
            student.clubs_joined == club_num.min
        end
    end

    def fellow_club_members(club_arg)
        club_members = []
        self.clubs.each do |club|
            if club == club_arg
                club_members = club.members
            end
        end
        club_members.delete(self)
        club_members.map do |member|
            member.name
        end
    end

    def self.find_by_name(name)
        found = self.all.find do |student|
            student.name.downcase == name.downcase
        end
        if found
            found
        else
            "Sorry, do not have that student listed"
        end
    end

    def date_joined(club)
        the_club = Membership.all.find do |membership|
            membership.club == club && membership.student == self
        end
        if the_club
            the_club.date_joined
        else
            "Sorry, we could not find your membership in #{club.name}"
        end
    end
end
