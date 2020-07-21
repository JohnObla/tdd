class Tester
  def initialize(bugs: 0)
    @bugs = bugs
  end

  def speak
    "Hello!"
  end

  def bugs_found?
    @bugs > 0
  end
end