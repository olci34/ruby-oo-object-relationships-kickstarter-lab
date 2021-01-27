class ProjectBacker
    attr_accessor :project, :backer
    @@all = []
    def initialize(project, backer)
        self.backer = backer
        self.project = project
        self.class.all << self
    end

    def self.all
        @@all
    end

end