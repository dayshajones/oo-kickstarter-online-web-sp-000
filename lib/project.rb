class Project
  
  attr_reader :name, :backers
  
  def initialize(name)
    @name = name
    @backers = []
  end
  
end