

class Backer

  attr_reader :name, :title
  attr_accessor :backed_projects

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self # adds instance of backer to the project backers array
  end

end
