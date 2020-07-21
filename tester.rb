class Tester
  def initialize(bugs: 0)
    @bugs = bugs
  end

  def speak
    "Hello!"
  end

  def happy?
    @bugs > 0
  end

  def debug
    @bugs = 0
  end
end
