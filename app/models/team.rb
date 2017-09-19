class Team
  attr_accessor :name, :motto

  def initialize(name_motto_hash)
    @name=name_motto_hash[:name]
    @motto=name_motto_hash[:motto]
    @members = []
  end

  def new_member(name, power, bio)
    mem = Member.new(name, power, bio)
    mem.team = self
    @members << mem
  end

  def members
    @members
  end

end
