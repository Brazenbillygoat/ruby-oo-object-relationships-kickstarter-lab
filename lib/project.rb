require 'pry'

class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        joint_array = []
        ProjectBacker.all.each do |backers_and_projects|
            if backers_and_projects.project == self
                joint_array << backers_and_projects.backer
            end
            # binding.pry
        end
        joint_array
    end

end
