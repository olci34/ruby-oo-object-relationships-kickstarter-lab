class Backer
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb_array = ProjectBacker.all.select {|backed_project| backed_project.backer == self}
        pb_array.collect {|pb| pb.project}
    end

end