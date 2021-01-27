class Project
    attr_accessor :title
    @@all = []
    def initialize(title)
        self.title = title
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pb_array = ProjectBacker.all.select {|backed_project| backed_project.project == self}
        pb_array.collect{|pb| pb.backer}
    end

end