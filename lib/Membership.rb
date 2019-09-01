class Membership
    attr_reader(:club, :student, :date_joined)

    @@all = []
  
    def initialize(club, student, date_joined)
        @club = club
        @student = student
        @date_joined = date_joined
        @@all << self
    end

    def self.all
        @@all
    end
end
