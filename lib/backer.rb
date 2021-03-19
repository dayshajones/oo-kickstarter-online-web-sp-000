class Backer
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    backed_projects << project
  end
  
  def backed_projects
        project_backer_instances = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end

        project_backer_instances.map do |pbi|
            pbi.project
        end
    end
  
end