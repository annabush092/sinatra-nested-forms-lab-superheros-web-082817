class Member
  attr_accessor :name, :power, :bio, :team

  def initialize(name, power, bio)
    @name=name
    @power = power
    @bio = bio
  end
end
